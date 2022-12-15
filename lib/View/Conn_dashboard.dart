import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../Utils.dart';
import 'ForgotPassword_dashboard.dart';
import '../constants/color_constants.dart';
import './widgets/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: primary,

      bottomNavigationBar: BottomBar(),
    );
  }
}
