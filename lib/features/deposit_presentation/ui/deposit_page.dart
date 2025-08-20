// lib/features/deposit/presentation/pages/deposit_page.dart
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/models/toast_data.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/repositories/toasts_repository.dart';
import 'package:chainstack/features/wallet/presentation/state/wallet_bloc/wallet_bloc.dart';
import 'package:chainstack/features/wallet/presentation/state/wallet_bloc/wallet_models.dart';
import 'package:chainstack/shared/utils/extensions/context.dart';
import 'package:chainstack/shared/utils/extensions/text_style.dart';
import 'package:chainstack/shared/widgets/buttons/base_button.dart';
import 'package:chainstack/shared/widgets/x_app_bar/x_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qr_flutter/qr_flutter.dart';

class DepositPage extends StatelessWidget {
  const DepositPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WalletBloc>(
      create: (_) => GetIt.I.get(),
      child: Scaffold(
        appBar: const XAppBar(title: Text('Получить BTC')),
        body: SafeArea(
          child: BlocBuilder<WalletBloc, WalletState>(
            builder: (context, state) {
              final address = switch (state) {
                WalletLoadedState(:final address) => address,
                _ => null,
              };

              if (address == null || address.isEmpty) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      'Адрес кошелька недоступен.\nОткройте главный экран, чтобы инициализировать кошелёк.',
                      style: context.text.bodySecondaryRegular,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Card(
                    color: context.colors.backgroundMedium,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Ваш адрес', style: context.text.bodyPrimaryRegular),
                          const SizedBox(height: 8),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  address,
                                  style: context.text.subtitlePrimarySemibold,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(width: 8),
                              IconButton(
                                tooltip: 'Скопировать',
                                icon: const Icon(Icons.copy),
                                onPressed: () async {
                                  await Clipboard.setData(ClipboardData(text: address));
                                  GetIt.I.get<IToastsRepository>().pushToastData(
                                    ToastData(type: ToastType.success, title: 'Адрес скопирован'),
                                  );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          // QR-код адреса
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: context.colors.backgroundHigh,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: QrImageView(
                                data: address,
                                version: QrVersions.auto,
                                size: 220,
                                // gapless: true,
                                backgroundColor: Colors.white, // контраст под тёмную тему
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: Text(
                              'Покажите этот QR-код для получения BTC (testnet)',
                              style: context.text.bodyPrimaryRegular.secondary(context),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: BaseButton(
                                  onPressed: () async {
                                    await Clipboard.setData(ClipboardData(text: address));
                                    GetIt.I.get<IToastsRepository>().pushToastData(
                                      ToastData(type: ToastType.success, title: 'Адрес скопирован'),
                                    );
                                  },
                                  child: const Text('Скопировать адрес'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
