import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STStore (Ecommerce Store mobile &"),
        backgroundColor: Colors.black87,
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.0),
              child: (Text("Getting Started" ,))),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(10.0),
            child: (Text("Create an account to continue!")),
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(25.0, 20.0, 10.0, 0.0),
              child: Text(
                "Email",
              )),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20.0, top: 5.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: ("abc@gmail.com"),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(25.0, 20.0, 10.0, 0.0),
              child: Text(
                "Username",
              )),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20.0, top: 5.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: ("John"),
              ),
            ),
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(25.0, 20.0, 10.0, 0.0),
              child: Text(
                "Password",
              )),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20.0, top: 5.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: ("........"),
                
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(15.0),
            child: TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.check_box),
              label: Text(
                "By creating an account,you agree to our Terms & Conditions",
              ),
            ),
          ),
          Container(
            child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.navigate_next),
                label: Text("SING UP"),
                style: ButtonStyle()),
          ),
          Container(
              padding: EdgeInsets.only(left: 80.0),
              child: Row(children: [
                Text("Already have an account?"),
                TextButton(onPressed: () {}, child: Text("Sign in")),
              ])),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.facebook),
            label: Text("Connect with Facebook"),
          ),
        ],
      ),
    );
  }
}
