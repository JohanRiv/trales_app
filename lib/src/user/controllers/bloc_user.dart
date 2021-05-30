import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trales_app/src/user/connectors/auth_connector.dart';
import 'package:trales_app/src/user/connectors/cloud_firestore_connector.dart';
import 'package:trales_app/src/user/models/user.dart';

class UserBloc implements Bloc {
  final _authConnector = AuthConnector();
  final _cloudFirestoreConnector = CloudFiresotreConnector();

  Stream<User> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User> get authStatus => streamFirebase;

  @override
  void dispose() {}

  Future<User> login() {
    return _authConnector.loginFirebase();
  }

  void addUser(UserTrales user) =>
      _cloudFirestoreConnector.updateUserDataFirestore(user);

  signOut() {
    _authConnector.singOut();
  }
}
