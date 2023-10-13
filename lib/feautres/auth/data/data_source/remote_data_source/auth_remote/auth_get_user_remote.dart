import 'package:firebase_auth/firebase_auth.dart' as auth;

abstract class AuthGetUserRemoteDataSource {
  Stream<auth.User?> get getUser;
}

class AuthGetUserRemoteDataSourceImpl implements AuthGetUserRemoteDataSource {
  final auth.FirebaseAuth _firebaseAuth;

  AuthGetUserRemoteDataSourceImpl({auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance;
  @override
  Stream<auth.User?> get getUser => _firebaseAuth.userChanges();
}
