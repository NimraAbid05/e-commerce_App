import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
          title: Text("STStore (Ecommerce Store mobile &"),
        backgroundColor: Colors.black87,
      
      ),
      drawer: Drawer(),
        body: Container(
      child: (Column(
        children: [
          Text("Let's Sign You In"),
          Text("Welcome back,you've been missed!"),
          TextField(),
          TextField(),
          ElevatedButton(
            onPressed: () {},
            child: Text("SIGN IN"),
          ),
          Text("Don't have an account?"),
          ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.facebook), label:(Text("Connect with Facebook"))),

        ],
      )),
    ));
  }
}
