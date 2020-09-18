import 'package:firebase_auth/firebase_auth.dart';

class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in using phone number
  Future signInPhone() async {
    try {
      final UserCredential result =
          await _auth.signInWithEmailAndPassword(email: null, password: null);
      //due to some problem with _auth.signInWithPhoneNumber() used email &
      // password
      final User user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register using phone number

  //signout

}
