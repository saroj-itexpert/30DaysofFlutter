import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                padding: const EdgeInsets.symmetric(
                    horizontal: 42.0, vertical: 12.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Username cannot be empty";
                        } else if (value.length < 4) {
                          return "Username length must be more than 4";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter Your Username",
                          labelText: "Username"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 8) {
                          return "Password length must be more than 8";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          labelText: "Password"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(50.0),
                child: InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50.0,
                    width: changeButton ? 50.0 : 150.0,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
