import 'package:beamer/beamer.dart';
import 'package:chainstack/app/router/models/m_beam_location.dart';
import 'package:chainstack/app/router/models/m_beam_page.dart';
import 'package:chainstack/features/deposit_presentation/ui/deposit_page.dart';
import 'package:chainstack/features/history/presentation/state/history_bloc/history_bloc.dart';
import 'package:chainstack/features/history/presentation/ui/history_page.dart';
import 'package:chainstack/features/wallet/presentation/ui/wallet_page.dart';
import 'package:chainstack/features/withdrawal/presentation/ui/withdrawal_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class WalletLocation extends MBeamLocation<BeamState> {
  static const String wallet = '/';
  static const String deposit = '/deposit';
  static const String withdrawal = '/withdrawal';
  static const String historyLocation = '/history';
  @override
  List<Pattern> patterns = [wallet, deposit, withdrawal, historyLocation];

  @override
  List<BeamPage> buildTree(BuildContext context, BeamState state) {
    return [
      const MBeamPage(child: WalletPage(), key: ValueKey('WalletPage')),
      if (state.pathPatternSegments.contains('withdrawal'))
        const MBeamPage(child: WithdrawalPage(), key: ValueKey('WithdrawalPage')),
      if (state.pathPatternSegments.contains('deposit'))
        const MBeamPage(child: DepositPage(), key: ValueKey('DepositPage')),
      if (state.pathPatternSegments.contains('history'))
        MBeamPage(
          child: BlocProvider(create: (_) => GetIt.I.get<HistoryBloc>(), child: HistoryPage()),
          key: ValueKey('HistoryPage'),
        ),
    ];
  }
}
