import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 42.0, vertical: 12.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Your Username", labelText: "Username"),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoute.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius:
                      BorderRadius.circular(changeButton ? 50.0 : 5.0),
                ),
                height: 50.0,
                width: changeButton ? 50.0 : 150.0,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.lightGreenAccent,
                        size: 36.0,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(
            //       context,
            //       MyRoute.homeRoute,
            //     );
            //   },
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(150, 60),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
