import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

abstract class AuthLogInRemoteDataSource {
  Future<Unit> login({required String email, required String password});
}

class AuthLogInRemoteDataSourceImpl implements AuthLogInRemoteDataSource {
  final auth.FirebaseAuth _firebaseAuth;

  AuthLogInRemoteDataSourceImpl({auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? auth.FirebaseAuth.instance;

  @override
  Future<Unit> login({required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return unit;
  }
}
