import 'package:api_project/pages/views/country_select.dart';
import 'package:api_project/pages/views/forecast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xff161423)));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                      color: Color(0xFFF0F0F0)))),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: const Color(0xFFF0F0F0),
                displayColor: const Color(0xFFF0F0F0),
              )),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff1A1827),
              Color(0xff00000E),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: const Forecast());
  }
}
