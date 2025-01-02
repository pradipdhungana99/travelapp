import 'package:go_router/go_router.dart';
import 'package:travel_app/detailspage/details_page.dart';
import 'package:travel_app/homepage/home_page.dart';
import 'package:travel_app/splashpage/splash_page.dart';
import 'package:travel_app/onboardpage/onboard_pages.dart';
import 'package:travel_app/passwordreset/forgot_password.dart';
import 'package:travel_app/signinpage/sign_in_page.dart';
import 'package:travel_app/signuppage/sign_up_page.dart';
import 'package:travel_app/viewpage/view_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/firstpage',
  routes: [
    GoRoute(
      path: '/firstpage',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      name: 'onboardingscreen',
      path: '/onboardpage',
      builder: (context, state) => OnboardingScreen(),
    ),
    GoRoute(
        name: 'signinpage',
        path: '/signinpage',
        builder: (context, state) => Signinpage()),
    GoRoute(
      name: 'signuppage',
      path: '/signuppage',
      builder: (context, state) => Signuppage(),
    ),
    GoRoute(
      path: '/passwordreset',
      name: 'forgotpassword',
      builder: (context, state) => ForgotPassword(),
    ),
    GoRoute(
      path: '/homepage',
      name: 'homepage',
      builder: (context, state) => Homepage(),
    ),
    GoRoute(
      path: '/detailspage',
      name: 'detailspage',
      builder: (context, state) => DetailsPage(),
    ),
    GoRoute(
      path: '/viewpage',
      name: 'viewpage',
      builder: (context, state) => ViewPage(),
    ),
  ],
);
