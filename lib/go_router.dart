import 'package:go_router/go_router.dart';

import 'package:travel_app/detailspage/details_page.dart';
import 'package:travel_app/homepage/home_page.dart';
import 'package:travel_app/otpverification/otp_verification.dart';
import 'package:travel_app/popularpackagepage/popular_package_page.dart';
import 'package:travel_app/popularplacespage/popular_places.dart';
// import 'package:travel_app/practice.dart';
import 'package:travel_app/profilepage/profile_page.dart';
import 'package:travel_app/schedulepage/schedule_page.dart';
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
      routes: [
        GoRoute(
          path: ':destinationId',
          name: 'detailspage',
          builder: (context, state) => DetailsPage(
            destinationId: state.pathParameters['destinationId']!,
          ),
          routes: [
            GoRoute(
              path: 'viewpage',
              name: 'viewpage',
              builder: (context, state) => ViewPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/otpverification',
      name: 'otpverification',
      builder: (context, state) => OtpVerificationPage(),
    ),
    GoRoute(
      path: '/schedulepage',
      name: 'schedulepage',
      builder: (context, state) => SchedulePage(),
    ),
    GoRoute(
      path: '/popularplacespage',
      name: 'popularpage',
      builder: (context, state) => PopularPlaces(),
    ),
    GoRoute(
      path: '/profilepage',
      name: 'profilepage',
      builder: (context, state) => ProfilePage(),
    ),
    GoRoute(
      path: '/popularpackagepage',
      name: 'popularpackage',
      builder: (context, state) => PopularPackagePage(),
    ),
  ],
);
