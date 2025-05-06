import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    removeSplash();
  }
  removeSplash()async{
    Future.delayed(Duration(seconds: 2),() {
      FlutterNativeSplash.remove();
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("data"),);
  }
}
