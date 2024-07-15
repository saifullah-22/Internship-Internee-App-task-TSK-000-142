// import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_vs_internee_app_with_splashscreen/screens/my_page.dart';

// class SplashPage extends StatefulWidget {
//   SplashPage({Key? key}) : super(key: key);

//   @override
//   _SplashPageState createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
  
  
  
//   @override
//   Widget build(BuildContext context) {
//     return FlutterSplashScreen.fadeIn(
//           backgroundColor: Colors.white,
//           onInit: () {
//             debugPrint("On Init");
//           },
//           onEnd: () {
//             debugPrint("On End");
//           },
//           childWidget: SizedBox(
//             height: 200,
//             width: 200,
//             child: Image.asset("assets/dart_bird.png"),
//           ),
//           onAnimationEnd: () => debugPrint("On Fade In End"),
//           nextScreen: const HomeScreen(),
//         );
//   }
// }



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_vs_internee_app_with_splashscreen/screens/home_screen.dart';  // Create a home_screen.dart file for the HomeScreen widget

class SplashScreen extends StatefulWidget {
  //static const String id= "Splash_Screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 450,
          child: Image.asset('images/internee.png'),
        ),
      ),
    );
  }
}
