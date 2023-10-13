import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class CachedFailure extends Failure {
  CachedFailure({required super.message});
}

class FirebaseAuthExceptionHandler extends Failure {
  FirebaseAuthExceptionHandler({required super.message});
  factory FirebaseAuthExceptionHandler.fromFirebase(
      FirebaseAuthException exception) {
    switch (exception.code) {
      case 'invalid-email':
        return FirebaseAuthExceptionHandler(message: 'Invalid email address.');

      case 'user-not-found':
        return FirebaseAuthExceptionHandler(message: 'User not found.');

      case 'wrong-password':
        return FirebaseAuthExceptionHandler(message: 'Incorrect password.');

      case 'user-disabled':
        return FirebaseAuthExceptionHandler(message: 'User has been disabled.');

      case 'too-many-requests':
        return FirebaseAuthExceptionHandler(
            message: 'Too many requests. Please try again later.');

      case 'operation-not-allowed':
        return FirebaseAuthExceptionHandler(message: 'Operation not allowed.');
      case 'email-already-in-use':
        return FirebaseAuthExceptionHandler(
            message: 'The email address is already in use by another account.');

      case 'weak-password':
        return FirebaseAuthExceptionHandler(
            message: 'The password is too weak.');

      case 'invalid-credential':
        return FirebaseAuthExceptionHandler(
            message:
                'The supplied auth credential is malformed or has expired.');

      case 'account-exists-with-different-credential':
        return FirebaseAuthExceptionHandler(
            message:
                'An account already exists with the same email address but different sign-in credentials.');

      case 'invalid-verification-code':
        return FirebaseAuthExceptionHandler(
            message: 'The verification code is invalid.');

      case 'invalid-verification-id':
        return FirebaseAuthExceptionHandler(
            message: 'The verification ID is invalid.');

      case 'network-request-failed':
        return FirebaseAuthExceptionHandler(
            message:
                'A network error occurred. Please check your internet connection and try again.');

      default:
        return FirebaseAuthExceptionHandler(
            message: 'An error occurred. Please try again.');
    }
  }
}

class NetworkFailure extends Failure {
  NetworkFailure({
    required super.message,
  });
}

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            message:
                "The connection with the server timed out. Please try again later.");

      case DioExceptionType.sendTimeout:
        return ServerFailure(
            message:
                "The request to the server timed out while sending data. Please try again later.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            message:
                "The request to the server timed out while waiting for a response. Please try again later.");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            message:
                "Encountered a security certificate issue while connecting to the server. Please ensure the server's certificate is valid and try again.");
      case DioExceptionType.badResponse:
        return ServerFailure.fromRespone(
            statusCode: e.response!.statusCode!, response: e.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(
            message:
                "The request to the server was canceled. Please try again.");
      case DioExceptionType.connectionError:
        return ServerFailure(
            message:
                "No internet connection available. Please check your network settings and try again.");
      case DioExceptionType.unknown:
        return ServerFailure(
            message:
                "Oops! Something went wrong while communicating with the server. Please try again later.");
    }
  }
  factory ServerFailure.fromRespone(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 404) {
      return ServerFailure(message: "Not Found!, Please try again later.");
    } else if (statusCode >= 500) {
      return ServerFailure(
          message: "There was error in Server, Please try again later.");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(message: response["messages"]);
    } else {
      return ServerFailure(
          message:
              "Oops! Something went wrong while communicating with the server. Please try again later.");
    }
  }
}
