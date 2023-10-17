import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

abstract class ImageUserPutFileRemoteDataSource {
  Future<String> putFile(String path, File file, String email);
}

class ImageUserPutFileRemoteDataSourceImpl
    implements ImageUserPutFileRemoteDataSource {
  final FirebaseStorage _firebaseStorage;

  ImageUserPutFileRemoteDataSourceImpl({FirebaseStorage? firebaseStorage})
      : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  @override
  Future<String> putFile(String path, File file, String email) async {
    final reference = _firebaseStorage.ref().child(email).child(path);
    final uploadTask = reference.putFile(file);
    final snapshot = await uploadTask.whenComplete(() => {});
    final downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }
}
