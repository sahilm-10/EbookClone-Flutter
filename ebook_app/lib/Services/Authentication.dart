import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class Authentication {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> googleSignIn() async {
    final GoogleSignInAccount? googleSignInAccount =
        await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);

    final UserCredential userCredential =
        await _firebaseAuth.signInWithCredential(authCredential);

    final User? user = userCredential.user;
    assert(user!.displayName != null);
    assert(user!.email != null);

    final User? currenUSer = _firebaseAuth.currentUser;
    assert(currenUSer!.uid == user!.uid);

    return 'Error occured';
  }

  Future<String> googleSignOut() async {
    _googleSignIn.signOut();

    return 'Error Out';
  }
}
