import 'package:bus_landing_app/screens/components/navbar_button.dart';
import 'package:bus_landing_app/screens/components/navbar_item.dart';
import 'package:bus_landing_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // Replace with actual values
      options: FirebaseOptions(
    apiKey: 'AIzaSyC90-AQR_V6T_bNvPaRrVFpAtjzYJAXTm0',
    appId: '1:789310177341:web:8781f595eb142083a3aa54',
    messagingSenderId: '789310177341',
    projectId: 'bus-app-iitu',
    authDomain: 'bus-app-iitu.firebaseapp.com',
    storageBucket: 'bus-app-iitu.appspot.com',
  ));

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
