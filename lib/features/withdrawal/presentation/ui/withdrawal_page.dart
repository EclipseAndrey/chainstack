import 'package:chainstack/features/withdrawal/presentation/state/withdrawal_bloc.dart';
import 'package:chainstack/features/withdrawal/presentation/state/withdrawal_models.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/extensions/text_style.dart';
import 'package:chainstack/shared/widgets/buttons/base_button.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class WithdrawalPage extends StatefulWidget {
  const WithdrawalPage({super.key});

  @override
  State<WithdrawalPage> createState() => _WithdrawalPageState();
}

class _WithdrawalPageState extends State<WithdrawalPage> {
  final _formKey = GlobalKey<FormState>();
  final _addressCtrl = TextEditingController();
  final _amountCtrl = TextEditingController();
  final _addrFocus = FocusNode();
  final _amountFocus = FocusNode();

  @override
  void dispose() {
    _addressCtrl.dispose();
    _amountCtrl.dispose();
    _addrFocus.dispose();
    _amountFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<WithdrawalBloc>(create: (_) => GetIt.I.get())],
      child: Builder(
        builder: (context) {
          return BlocConsumer<WithdrawalBloc, WithdrawalState>(
            listenWhen: (p, c) => p != c,
            listener: (context, state) {
              if (state is WithdrawalErrorState) {
                final msg = state.error.message ?? 'Ошибка отправки';
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
              }
            },
            builder: (context, state) {
              final sending = state is WithdrawalSendingState;
              final success = state is WithdrawalSuccessState;

              return Scaffold(
                appBar: XAppBar(title: const Text('Отправить BTC')),
                body: SafeArea(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: success
                        ? _SuccessView(
                            onClose: () {
                              context.read<WithdrawalBloc>().add(const WithdrawalEvent.reset());
                              Navigator.of(context).pop(); // назад на кошелёк
                            },
                          )
                        : SingleChildScrollView(
                            padding: const EdgeInsets.all(16),
                            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                            child: AbsorbPointer(
                              absorbing: sending,
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    // Адрес получателя
                                    Card(
                                      color: context.colors.backgroundMedium,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Адрес получателя', style: context.text.bodyPrimaryRegular),
                                            const SizedBox(height: 8),
                                            TextFormField(
                                              controller: _addressCtrl,
                                              focusNode: _addrFocus,
                                              decoration: InputDecoration(
                                                hintText: 'tb1q... / m... / n... / 2...',
                                                suffixIcon: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    IconButton(
                                                      tooltip: 'Вставить',
                                                      icon: const Icon(Icons.paste),
                                                      onPressed: () async {
                                                        final data = await Clipboard.getData('text/plain');
                                                        final t = data?.text ?? '';
                                                        if (t.isNotEmpty) _addressCtrl.text = t.trim();
                                                      },
                                                    ),
                                                    IconButton(
                                                      tooltip: 'Очистить',
                                                      icon: const Icon(Icons.clear),
                                                      onPressed: () => _addressCtrl.clear(),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              textInputAction: TextInputAction.next,
                                              validator: _validateBtcTestnetAddress,
                                              onFieldSubmitted: (_) => _amountFocus.requestFocus(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 12),

                                    // Сумма (BTC)
                                    Card(
                                      color: context.colors.backgroundMedium,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Сумма (BTC)', style: context.text.bodyPrimaryRegular),
                                            const SizedBox(height: 8),
                                            TextFormField(
                                              controller: _amountCtrl,
                                              focusNode: _amountFocus,
                                              decoration: const InputDecoration(hintText: 'например, 0.001'),
                                              keyboardType: const TextInputType.numberWithOptions(decimal: true),
                                              inputFormatters: [
                                                _AmountFormatter(), // ограничим формат
                                              ],
                                              validator: _validateAmount,
                                              textInputAction: TextInputAction.done,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),

                                    // Кнопка Подтвердить
                                    BaseButton(
                                      onPressed: sending ? null : () => _submit(context),
                                      child: sending
                                          ? const SizedBox(
                                              height: 20,
                                              width: 20,
                                              child: CircularProgressIndicator(strokeWidth: 2),
                                            )
                                          : const Text('Подтвердить'),
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      'После подтверждения произойдёт только локальная проверка и успешный экран (без реальной отправки).',
                                      style: context.text.bodyPrimaryRegular.secondary(context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) return;

    final to = _addressCtrl.text.trim();
    final amtStr = _amountCtrl.text.replaceAll(',', '.').trim();
    final amount = double.tryParse(amtStr) ?? 0;

    context.read<WithdrawalBloc>().add(WithdrawalEvent.send(toAddress: to, amountBtc: amount));
  }
}

/// Успешный экран
class _SuccessView extends StatelessWidget {
  final VoidCallback onClose;
  const _SuccessView({required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(24),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 28),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.check_circle, color: Colors.green, size: 56),
              const SizedBox(height: 12),
              Text('Успешно', style: context.text.subtitlePrimarySemibold),
              const SizedBox(height: 8),
              Text(
                'Заявка на отправку создана.\nБаланс и история обновлены.',
                textAlign: TextAlign.center,
                style: context.text.bodySecondaryRegular,
              ),
              const SizedBox(height: 16),
              BaseButton(onPressed: onClose, child: const Text('Готово')),
            ],
          ),
        ),
      ),
    );
  }
}

/// Валидатор адреса (упрощённый тестнет)
String? _validateBtcTestnetAddress(String? v) {
  final s = (v ?? '').trim();
  if (s.isEmpty) return 'Укажите адрес';
  // поддержим bech32 testnet (tb1...) и legacy m/n, p2sh 2...
  final bech32 = RegExp(r'^(tb1)[0-9ac-hj-np-z]{39,59}$', caseSensitive: false);
  final base58 = RegExp(r'^[mn2][1-9A-HJ-NP-Za-km-z]{25,39}$');
  if (bech32.hasMatch(s) || base58.hasMatch(s)) return null;
  return 'Некорректный BTC testnet адрес';
}

/// Валидатор суммы
String? _validateAmount(String? v) {
  final s = (v ?? '').replaceAll(',', '.').trim();
  if (s.isEmpty) return 'Укажите сумму';
  final d = double.tryParse(s);
  if (d == null) return 'Некорректное число';
  if (d <= 0) return 'Сумма должна быть > 0';
  return null;
}

/// Форматтер суммы: только цифры, одна точка/запятая
class _AmountFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    var txt = newValue.text.replaceAll(',', '.');
    // Разрешаем только цифры и одну точку
    final cleaned = StringBuffer();
    bool dot = false;
    for (final ch in txt.characters) {
      if (RegExp(r'[0-9]').hasMatch(ch)) {
        cleaned.write(ch);
      } else if ((ch == '.' || ch == ',') && !dot) {
        cleaned.write('.');
        dot = true;
      }
    }
    final res = cleaned.toString();
    return TextEditingValue(
      text: res,
      selection: TextSelection.collapsed(offset: res.length),
    );
  }
}
