import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import '../Model/UsersInscription.dart';
class FirestoreService{

FirebaseFirestore _db = FirebaseFirestore.instance;
Future<void>saveUsers(UsersInscription usersInscription){
   return _db.collection('Users').doc(usersInscription.usersId).set(usersInscription.toMap());
}
}
