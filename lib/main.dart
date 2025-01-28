import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/controllers/destination_controller.dart';
import 'package:travel_app/controllers/message_controller.dart';
import 'package:travel_app/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DestinationController()),
        ChangeNotifierProvider(create: (_) => MessageController()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
