import 'package:flutter/material.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => Login2();
}

class Login2 extends State<Login2Screen> {
  bool passwordTertutup = true;
  tampilkanPassword() {
    setState(() {
      passwordTertutup = !passwordTertutup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: passwordTertutup ? Colors.red : Colors.yellow,
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: passwordTertutup,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter Your Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon:
                  passwordTertutup
                      ? Icon(Icons.visibility, color: Colors.red)
                      : Icon(Icons.visibility_off),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              tampilkanPassword();
            },
            child: Text("Tampil Password"),
          ),
        ],
      ),
    );
  }
}
