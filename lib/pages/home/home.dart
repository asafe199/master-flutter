import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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
    return Observer(builder: (_) => Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(controller.cout.toString()),
        ),
      ),
      bottomNavigationBar: FloatingActionButton(
        onPressed: null,
        child: IconButton(onPressed: (){
          controller.add();
        }, icon: Icon(Icons.add),),
      ),
    ));
  }
}
