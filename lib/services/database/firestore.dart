import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');

  // save order to database

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders
        .add({
          'date': DateTime.now(),
          'order': receipt,

          //add more fields here
        })
        .then((value) => print("Order Added"))
        .catchError((error) => print("Failed to add order: $error"));
  }
}
