import 'package:flutter/material.dart';
import 'package:multi_provider/name-change/name.dart';
import 'package:multi_provider/name-change/name_provider.dart';
import 'package:multi_provider/show_value/home_page.dart';
import 'package:multi_provider/show_value/home_provider.dart';
import 'package:multi_provider/value_change/value_change.dart';
import 'package:multi_provider/value_change/value_provider.dart';
import 'package:provider/provider.dart';

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
          ChangeNotifierProvider(create: (context) => ValueProvider()),
          ChangeNotifierProvider(create: (context) => NameProvider()),
          ChangeNotifierProvider(create: (context) => HomeProvider()),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:
                //  HomePage()
                //  ValueChange()
                Name()));
  }
}
