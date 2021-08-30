import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master/pages/home/home_controller.dart';

class Home extends StatefulWidget {
  const Home() : super();
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends ModularState<Home, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: FlutterLogo(
              curve: ElasticInCurve(
                1
              ),
              size: 40,
              duration: Duration(seconds: 5),
            ),
          ),
        ],
      ),
    );
  }
}
