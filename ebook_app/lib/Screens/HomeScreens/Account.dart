import 'package:ebook_app/Screens/signinoptions/Signin.dart';
import 'package:ebook_app/pages/home/home.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/Services/Authentication.dart';
import 'package:page_transition/page_transition.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var currentUser = FirebaseAuth.instance.currentUser;
  FirebaseAuth auth = FirebaseAuth.instance;
  get user_name => currentUser?.displayName;
  get email => currentUser?.email;
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(EvaIcons.shoppingCartOutline),
            onPressed: () {
              print('Basket Window');
            },
          )
        ],
        backgroundColor: Colors.black,
        title: Text('Account',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300.0,
              width: 400.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    user_name,
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(EvaIcons.google, color: Colors.white),
                        Text(
                          email,
                          style: TextStyle(color: Colors.grey, fontSize: 20.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'Read a Book',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Video preference',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Download Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Video Playback Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            Text(
              'Account Settings',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Account Security',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Email Notifications Preferences',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Learning Remainders',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            Text(
              'Support',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('About PlayBooks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('About PlayBooks',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('FAQs',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Share The PlayBooks App',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            Text(
              'Reader',
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              title: Text('Status',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            ),
            Center(
              child: MaterialButton(
                onPressed: () async {
                  await authentication.googleSignOut().whenComplete(() {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: SignIn(),
                            type: PageTransitionType.bottomToTop));
                  });
                },
                child: Text(
                  'Sign out',
                  style: TextStyle(color: Colors.lightBlue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'PlayBooks | 2022',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
