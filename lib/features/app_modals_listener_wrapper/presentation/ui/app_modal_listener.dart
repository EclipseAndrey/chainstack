import 'dart:async';
import 'package:chainstack/features/app_modals_listener_wrapper/presentation/state/app_modal_state.dart';
import 'package:chainstack/shared/widgets/x_modal_bottom_sheet/x_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppModalListener<T extends StateStreamable<AppModalState>> extends BlocListener<T, AppModalState> {
  AppModalListener({
    required XModal modal,
    super.key,
    // ignore: avoid_annotating_with_dynamic
    FutureOr<void> Function(dynamic result)? onModalHidden,
  }) : super(
         listener: (context, state) async {
           final cubit = context.read<T>();
           var dialogOpened = true;

           final result = await modal.show(
             context,
             builder: (context, child) {
               return BlocListener<AppModalCubit, AppModalState>(
                 bloc: cubit as AppModalCubit,
                 listenWhen: (previous, current) => dialogOpened && current is AppModalHidden,
                 listener: (context, state) {
                   Navigator.of(context).pop();
                 },
                 child: child,
               );
             },
           );

           dialogOpened = false;
           if (onModalHidden != null) {
             await onModalHidden(result);
           }
         },
         listenWhen: (previous, current) => previous != current && current is AppModalShown,
       );
}
