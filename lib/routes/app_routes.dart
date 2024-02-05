import 'package:cazamidemo/screens/splash_screen.dart';
import 'package:cazamidemo/screens/trends_screen.dart';
import 'package:cazamidemo/screens/wallet_page.dart';
import 'package:cazamidemo/widgets/bottom_nav_bar.dart';
import 'package:go_router/go_router.dart';

import '../widgets/fade_transition.dart';

const _splash = '/splash';
const _home = '/home';
const _trend = '/trend';

class AppRoutes {
  static String get splash => _splash;
  static String get home => _home;
  static String get trend => _trend;
}

final router = GoRouter(initialLocation: _splash, routes: [
  GoRoute(
    path: _splash,
    pageBuilder: (context, state) => buildPageWithDefaultTransition(
      context: context,
      state: state,
      child: const SplashScreen(),
    ),
  ),
  ShellRoute(
      builder: (context, state, child) => BottomWrapper(
            child: child,
          ),
      routes: [
        GoRoute(
          path: _home,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const WalletPage(),
          ),
        ),
        GoRoute(
          path: _trend,
          pageBuilder: (context, state) => buildPageWithDefaultTransition(
            context: context,
            state: state,
            child: const TrendsScreen(),
          ),
        ),
      ])
]);
