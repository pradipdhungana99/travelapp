import 'package:go_router/go_router.dart';
import 'package:travel_app/firstpage/firstpage.dart';
import 'package:travel_app/onboardpage/onboard_pages.dart';

final GoRouter router = GoRouter(
  initialLocation: '/firstpage',
  routes: [
    GoRoute(
      path: '/firstpage',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      name: 'homepage',
      path: '/homepage',
      builder: (context, state) => OnboardingScreen(),
    ),
  ],
);
