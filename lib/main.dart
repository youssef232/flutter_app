import 'package:flutter/material.dart';
import 'package:flutter_app/counter%20screen.dart';
import 'package:flutter_app/home%20screen.dart';
import 'package:flutter_app/login%20screen.dart';
import 'package:flutter_app/messenger%20screen.dart';
import 'package:flutter_app/self%20trying.dart';
import 'package:flutter_app/user%20screen.dart';

void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: CounterScreen(),
    );
  }

}
