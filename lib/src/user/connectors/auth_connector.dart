import 'package:firebase_auth/firebase_auth.dart';
import 'package:trales_app/src/user/connectors/auth_firebase_api.dart';

class AuthConnector {
  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<User> loginFirebase() => _firebaseAuthAPI.login();
  singOut() => _firebaseAuthAPI.signOut();
}
