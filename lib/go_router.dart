import 'package:flutter/material.dart';
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

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/firstpage',
  navigatorKey: _rootNavigatorKey,
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
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.blueAccent),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_outlined),
                  label: 'Calendar',
                  backgroundColor: Colors.blueGrey),
              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message_rounded),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorKey,
          routes: [
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
