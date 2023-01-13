import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:my_app/views/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
          title: Text("STStore (Ecommerce Store mobile &"),
        backgroundColor: Colors.black87,
      
      ),
      drawer: Drawer(),
      body: Container(
       
        height: 1200,
        child:Center(
          child:
      Column(
        children:[
          Center(
            child:(
         Text("Welcome to STStore !" , textAlign:TextAlign.center, textDirection: TextDirection.ltr)
         ),
         ),
Center(
  child:(
       Text("With long expirience in the audio industry, we create the best quality products",textAlign: TextAlign.center,textDirection: TextDirection.ltr,)
      ),
      ),
       ElevatedButton(onPressed: (){
        Navigator.pop(context,Login());
       }, child: Text("GET STARTED"),
       ),
        ]
      ),
      
    )));
  }
}