import 'package:firebase_auth/firebase_auth.dart';
import 'package:uhum/models/user.dart';

class Authservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create tempUser obj based on Firebase User
  tempUser _userFromFirebaseuser(User user) {
    return user != null ? tempUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.authStateChanges.map(_userFromFirebaseuser);
  }

  //sign in using phone number
  Future signInPhone() async {
    try {
      final UserCredential result =
          await _auth.signInWithEmailAndPassword(email: null, password: null);
      //due to some problem with _auth.signInWithPhoneNumber() used email &
      // password
      final User user = result.user;
      return _userFromFirebaseuser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register using phone number

  //signout

}
