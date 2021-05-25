import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trales_app/src/user/connectors/auth_connector.dart';

class UserBloc implements Bloc {
  final _authConnector = AuthConnector();

  @override
  void dispose() {}

  Future<User> login() {
    return _authConnector.loginFirebase();
  }
}
