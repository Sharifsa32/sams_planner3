import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    testData();
    return MaterialApp(
      title: "Planner",
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
      ),
    );
  }

  Future testData() async {
    final db  = FirebaseFirestore.instance;
    return await db.collection("task_details").get().then(
            (res) => print("Successfully completed"),
        onError: (e) => print("Error completing: $e"));

  }

}
