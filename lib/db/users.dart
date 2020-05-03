import 'package:firebase_database/firebase_database.dart';

class UserServices{
  FirebaseDatabase _database = FirebaseDatabase.instance;
  String ref = "users";

  createUser(){
    _database.reference().child(ref).push().set(
      'test'
    ).catchError((e) =>{ print(e.toString())});
  }
}