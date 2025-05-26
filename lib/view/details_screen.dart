import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{
  final String serviceName;
  const DetailScreen({ required this.serviceName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(title: Text('$serviceName'),),
      body: Center(child: Text('You tapped on:$serviceName',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}