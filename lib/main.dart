import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminarappclone/Drawer.dart';

import 'Bottom Navigation.dart';
import 'screens/Homepage.dart';
void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Luminar Clone',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.purple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Drawerr(),
    );
  }
}
