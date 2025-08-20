import 'package:chainstack/core/infrastructure/internet_checker/presentation/state/internet_check_cubit/internet_check_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ConnectivityWrapper extends StatelessWidget {
  final Widget child;
  const ConnectivityWrapper({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        BlocBuilder<InternetCheckCubit, InternetCheckState>(
          bloc: GetIt.I.get(),
          builder: (context, state) {
            final showWarning = !state.isConnectedToNetwork || !state.hasRealInternet;

            return AnimatedSlide(
              duration: const Duration(milliseconds: 400),
              offset: showWarning ? Offset.zero : const Offset(0, -1),
              curve: Curves.easeOut,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: showWarning ? 1 : 0,
                child: SafeArea(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.95),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8, offset: const Offset(0, 4)),
                      ],
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Нестабильный интернет',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text('Проверьте интернет или выключите VPN', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
