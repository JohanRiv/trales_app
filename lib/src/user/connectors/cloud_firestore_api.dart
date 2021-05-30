import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:trales_app/src/user/models/user.dart';

class CloudFirestoreAPI {
  final String USER = "users";
  final String POST = "posts";
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  void updateUserData(UserTrales user) async {
    DocumentReference reference = _db.collection(USER).doc(user.userID);
    return reference.set({
      'userID': user.userID,
      'userName': user.userName,
      'userEmail': user.userEmail,
      'userPhotoUrl': user.userPhotoUrl,
      'userFollows': user.userFollows,
      'userFollowers': user.userFollowers,
      'userPost': user.userPost,
      'userFavoritePost': user.userFavoritePost,
      'lastSignIn': DateTime.now()
    }, SetOptions(merge: true));
  }
}
