import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:goldabikia/Home%20Screen.dart';

void main() async{


  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options:FirebaseOptions(
          apiKey: "AIzaSyCS-Xz6LXVqFbip5ha07ipprpDVdXbCYLw",
          authDomain: "cashier-10.firebaseapp.com",
          projectId: "cashier-10",
          storageBucket: "cashier-10.appspot.com",
          messagingSenderId: "546414849747",
          appId: "1:546414849747:web:6595929b4e6c6180102e26",
          measurementId: "G-F9WSKML5FE"
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomeScrren(),
        navigatorObservers: [FlutterSmartDialog.observer],
        // here
        builder: FlutterSmartDialog.init(),
      ),
    );
  }
}
