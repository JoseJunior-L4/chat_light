import 'package:barb/firebase_methods.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRepo {
  FirebaseMethods _firebaseMethods = FirebaseMethods();

  Future<User?> getCurrentUser() => _firebaseMethods.getCurrentUser();
}
