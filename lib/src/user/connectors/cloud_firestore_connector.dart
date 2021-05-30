import 'package:trales_app/src/user/connectors/cloud_firestore_api.dart';
import 'package:trales_app/src/user/models/user.dart';

class CloudFiresotreConnector {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserTrales user) =>
      _cloudFirestoreAPI.updateUserData(user);
}
