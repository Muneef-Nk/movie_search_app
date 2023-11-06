import 'package:flutter/material.dart';
import 'package:movie_search/controller/homescreen_controller.dart';
import 'package:movie_search/view/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomescreenController(),
        )
      ],
      child: MaterialApp(
        // theme: ThemeData(hintColor: Colors.white),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
