import 'package:ebook_app/Screens/signinoptions/Signin.dart';
import 'package:ebook_app/pages/home/home.dart';
// import 'package:ebook_app/provider/google_signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
      SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle
      (
        statusBarColor: Colors.transparent
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ebooks App',
      home: SignIn(),
    
    );

  }
}


