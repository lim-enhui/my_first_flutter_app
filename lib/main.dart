// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:a_simple_app/models/my_happiness_index_data.dart';
import 'package:a_simple_app/models/my_info_data.dart';
import 'package:a_simple_app/screens/home_screen.dart';
import 'package:a_simple_app/screens/update_me_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyHappinessIndexData()),
        ChangeNotifierProvider(create: (_) => MyInfoData()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/add_name': (context) => const UpdateMeScreen(),
      },
    );
  }
}
