import 'package:go_router/go_router.dart';

import '../../presentation/home/home_screen.dart';
import '../../presentation/scoreboard/scoreboard_screen.dart';
import '../../presentation/team_registration/team_registration_screen.dart';
import '../../presentation/winner/winner_screen.dart';

abstract final class AppRouter {
  static const String home = '/';
  static const String teamRegistration = '/teams';
  static const String scoreboard = '/scoreboard';
  static const String winner = '/winner';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(
        path: home,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: teamRegistration,
        builder: (context, state) => const TeamRegistrationScreen(),
      ),
      GoRoute(
        path: scoreboard,
        builder: (context, state) => const ScoreboardScreen(),
      ),
      GoRoute(
        path: winner,
        builder: (context, state) => const WinnerScreen(),
      ),
    ],
  );
}
