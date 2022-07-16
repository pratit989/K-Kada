import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KKadaFirebaseUser {
  KKadaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

KKadaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KKadaFirebaseUser> kKadaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<KKadaFirebaseUser>((user) => currentUser = KKadaFirebaseUser(user));
