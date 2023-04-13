import 'package:flutter/material.dart';
import 'app.dart';
import 'package:firebase_core/firebase_core.dart';
Future<void> main() async {
  runApp(myapp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

