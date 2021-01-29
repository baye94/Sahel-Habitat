import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../Services/Firestore_Service.dart';
import '../Model/UsersInscription.dart';
class UsersProvider with ChangeNotifier {
  String _usersId;
  String _usersName;

  String _usersEmail;
  String _usersPhoneNumber;
  String _usersPassword;
  final firestoreService2 = FirestoreService();

  var uuid = Uuid();

  //Getters
  String get usersId => _usersId;

  String get usersName => _usersName;

  String get usersEmail => _usersEmail;

  String get usersPhoneNumber => _usersPhoneNumber;

  String get usersPassword => _usersPassword;

//Setters
  changeName(String value) {
    _usersName = value;
    notifyListeners();
  }

  changeEmail(String value) {
    _usersEmail = value;
    notifyListeners();
  }

  changePhoneNumber(String value) {
    _usersPhoneNumber = value;
    notifyListeners();
  }

  changePassword(String value) {
    _usersPassword = value;
    notifyListeners();
  }

  SaveUsers() {
    var Users = new UsersInscription(usersId: uuid.v4(),
        usersName: usersName,
        usersEmail: usersEmail,
        usersPhoneNumber: usersPhoneNumber,
        usersPassword: usersPassword);
   firestoreService2.saveUsers(Users);

    }
}