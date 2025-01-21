import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:travel_app/detailspage/details_page.dart';
import 'package:travel_app/homepage/home_page.dart';
import 'package:travel_app/message/message_detail.dart';
import 'package:travel_app/message/message_home.dart';
import 'package:travel_app/otpverification/otp_verification.dart';
import 'package:travel_app/popularpackagepage/popular_package_page.dart';
import 'package:travel_app/photos.dart';
import 'package:travel_app/popularplacespage/popular_places.dart';
// import 'package:travel_app/practice.dart';
import 'package:travel_app/profilepage/profile_page.dart';
import 'package:travel_app/schedulepage/schedule_page.dart';
import 'package:travel_app/onboardpage/onboard_pages.dart';
import 'package:travel_app/passwordreset/forgot_password.dart';
import 'package:travel_app/signinpage/sign_in_page.dart';
import 'package:travel_app/signuppage/sign_up_page.dart';
import 'package:travel_app/viewpage/view_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/firstpage',
  routes: [
    GoRoute(
      path: '/firstpage',
      builder: (context, state) => PhotoList(),
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
        // parentNavigatorKey: _shellNavigatorKey,
        builder: (context, state, navigationShell) {
          return Scaffold(
            body: navigationShell,
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) => navigationShell.goBranch(index),
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
              ],
            ),
          );
        },
        branches: [
          StatefulShellBranch(navigatorKey: _shellNavigatorKey, routes: [
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
          ]),
          StatefulShellBranch(
            routes: [
              GoRoute(
                  path: '/messages',
                  name: 'messages',
                  builder: (context, state) => MessageHome(),
                  routes: [
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: ':username',
                      name: 'message-details',
                      builder: (context, state) {
                        return MessageDetails();
                      },
                    )
                  ]),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profilepage',
                name: 'profilepage',
                builder: (context, state) => ProfilePage(),
              ),
            ],
          )
        ]),
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
      path: '/popularpackagepage',
      name: 'popularpackage',
      builder: (context, state) => PopularPackagePage(),
    ),
  ],
);
