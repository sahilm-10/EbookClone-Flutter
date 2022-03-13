import 'package:ebook_app/Screens/HomeScreens/Account.dart';
import 'package:ebook_app/pages/home/home.dart';
import 'package:flutter/material.dart';
// import 'package:ebook_app/Screens/signinoptions/Signin.dart';
import 'package:ebook_app/Services/Authentication.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () async {
                      print("Pressed");
                    },
                    icon: Icon(EvaIcons.email),
                    label: Text('Sign in with Email')),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: Divider(color: Colors.white),
                    ),
                    Text('or', style: TextStyle(color: Colors.white)),
                    SizedBox(
                      width: 100.0,
                      child: Divider(color: Colors.white),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0, top: 100.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () async {
                      await authentication.googleSignIn().whenComplete(() {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: HomePage(),
                                type: PageTransitionType.rightToLeftWithFade));
                      });
                    },
                    icon: Icon(EvaIcons.google),
                    label: Text('Sign in with google')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () {
                      print('google sign in..');
                    },
                    icon: Icon(Icons.facebook),
                    label: Text('Sign in with facebook')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: FlatButton.icon(
                    color: Colors.white,
                    onPressed: () {
                      print('google sign in..');
                    },
                    icon: Icon(FontAwesomeIcons.apple),
                    label: Text('Sign in with apple')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Text(
                      'New here?',
                      style: TextStyle(color: Colors.white),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                child: Account(),
                                type: PageTransitionType.bottomToTop));
                      },
                      child: Text(
                        'Create an account',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assests/Images/ebook.png'),
                fit: BoxFit.fitHeight, 
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}
