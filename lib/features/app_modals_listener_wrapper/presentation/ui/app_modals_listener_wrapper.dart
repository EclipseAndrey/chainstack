import 'package:beamer/beamer.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/modals/domain/modals_repository.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/modals/presentation/state/modal_bloc.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/modals/presentation/state/modals_state.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/domain/repositories/toasts_repository.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/presentation/state/toast_bloc.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/presentation/state/toast_bloc_models.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/toasts/presentation/ui/toast.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppModalsListenerWrapper extends StatelessWidget {
  final Widget child;

  const AppModalsListenerWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<ToastBloc>(create: (context) => GetIt.I.get())],
      child: Builder(
        builder: (context) => MultiBlocListener(
          listeners: [
            // Modals
            BlocListener<ModalBloc, ModalState>(
              listenWhen: (previous, current) => current.modalData?.modal != null,
              listener: (context, state) async {
                final modalData = state.modalData;

                await modalData?.modal!.show(context);
                await GetIt.I.get<IModalsRepository>().showModal(null, delay: 0);
              },
            ),

            // Toasts
            BlocListener<ToastBloc, ToastState>(
              listener: (context, state) {
                if (state.toastData == null ||
                    (state.toastData!.title.isEmpty && state.toastData!.description == null)) {
                  return;
                }

                showXToastWidget(
                  Toast.fromToastData(state.toastData!),
                  context: context,
                  onDismiss: () {
                    GetIt.I.get<IToastsRepository>().pushToastData(null);
                  },
                );
              },
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
