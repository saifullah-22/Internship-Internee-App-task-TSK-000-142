import 'package:flutter/material.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
        useMaterial3: true,
      ),
      // initialRoute: SplashScreen.id,
      // routes: {
      //  HomeScreen.id : (context) => HomeScreen(),
      //  InternshipSeeAll.id: (context) => InternshipSeeAll(),
      
      // },
      home: SplashScreen()
    );
  }
}

