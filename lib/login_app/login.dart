import 'package:flutter/material.dart';
import 'package:login/login_app/button.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Sign In',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: _buildButton());
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
            image: Image.asset('assets/glogo.png'),
            text: Text('Login with Google',
                style: TextStyle(color: Colors.black87, fontSize: 20)),
            color: Colors.white,
            onpressed: () {}),
        SizedBox(height: 30.0),
        MyButton(
            image: Image.asset('assets/flogo.png'),
            text: Text('Login with Facebook',
                style: TextStyle(color: Colors.black87, fontSize: 20)),
            color: Color(0xFF334D92),
            onpressed: () {}),
        SizedBox(height: 30.0),
        MyButton(
            image: Icon(Icons.mail, color: Colors.white),
            text: Text('Login with mail',
                style: TextStyle(color: Colors.black87, fontSize: 20)),
            color: Colors.green,
            onpressed: () {})
      ],
    ),
  );
}
