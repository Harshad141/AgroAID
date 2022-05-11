import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AgroAidFirebaseUser {
  AgroAidFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

AgroAidFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AgroAidFirebaseUser> agroAidFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AgroAidFirebaseUser>(
        (user) => currentUser = AgroAidFirebaseUser(user));
