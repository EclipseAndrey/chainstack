import 'package:beamer/beamer.dart';
import 'package:chainstack/app/localization/localization.dart';
import 'package:chainstack/app/router/router.dart';
import 'package:chainstack/app/themes/models/app_theme_data.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/modals/presentation/state/modal_bloc.dart';
import 'package:chainstack/features/app_modals_listener_wrapper/presentation/ui/app_modals_listener_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: Localization.supportedLocale,
      path: 'assets/translations',
      startLocale: const Locale('ru', 'RU'),
      fallbackLocale: const Locale('ru', 'RU'),
      useFallbackTranslations: true,
      useOnlyLangCode: true,
      child: Builder(
        builder: (context) {
          return MultiRepositoryProvider(
            providers: [
              Provider<AppRouter>(create: (_) => AppRouter()),
              Provider<ModalBloc>(create: (_) => GetIt.I.get()),
            ],
            child: Builder(
              builder: (context) {
                final routerDelegate = Provider.of<AppRouter>(context, listen: false).routerDelegate;

                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: AppModalsListenerWrapper(
                    child: MaterialApp.router(
                      routerDelegate: routerDelegate,
                      routeInformationParser: BeamerParser(),
                      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
                      localizationsDelegates: context.localizationDelegates,
                      supportedLocales: context.supportedLocales,
                      locale: context.locale,
                      debugShowCheckedModeBanner: false,
                      theme: getLightTheme(),
                      darkTheme: getDarkTheme(),
                      themeMode: ThemeMode.dark,
                      builder: (context, child) => MediaQuery(
                        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
                        child: OKToast(child: child ?? const SizedBox.shrink()),
                      ),
                      // scaffoldMessengerKey: AppKeys.navigatorKey,
                      // home: const SplashScreen(),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
