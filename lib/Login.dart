import 'package:smart_device_management_frontend/Animation/FadeAnimation.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:smart_device_management_frontend/SignUp.dart';
import 'dart:developer';
=======
import 'package:smart_device_management_frontend/HomePage.dart';
import 'package:smart_device_management_frontend/SignUp.dart';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';
>>>>>>> 4f4a81a (Milestone 1 commit)

class LoginPage extends StatelessWidget {
  @override
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
<<<<<<< HEAD
  void loginUser() {
    log(emailController.text);
    log(passwordController.text);
  }


  Widget build(BuildContext context) {
=======

  Widget build(BuildContext context) {
    void loginUser() async {
      final jsonBody = {
        "username": emailController.text,
        "password": passwordController.text
      };

      Map<String, String> requestHeaders = {
        "accept": "application/json",
        "Content-Type": "application/json"
      };

      final response = await http.post(
          Uri.parse("http://127.0.0.1:8001/users/login"),
          headers: requestHeaders,
          body: jsonEncode(jsonBody));

      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MyHomePage(title: "Smart Device Management")));
      } else {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            content: const Text("Username or Password Incorrect"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  color: Colors.deepPurple,
                  padding: const EdgeInsets.all(14),
                  child: const Text("OK"),
                ),
              ),
            ],
          ),
        );
      }
    }

>>>>>>> 4f4a81a (Milestone 1 commit)
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
<<<<<<< HEAD
                          fit: BoxFit.fill
                      )
                  ),
=======
                          fit: BoxFit.fill)),
>>>>>>> 4f4a81a (Milestone 1 commit)
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
<<<<<<< HEAD
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
=======
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
>>>>>>> 4f4a81a (Milestone 1 commit)
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
<<<<<<< HEAD
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
=======
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
>>>>>>> 4f4a81a (Milestone 1 commit)
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
<<<<<<< HEAD
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
=======
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
>>>>>>> 4f4a81a (Milestone 1 commit)
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
<<<<<<< HEAD
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: passwordController,
                                obscuringCharacter: '*', //added obscuringCharacter here
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),
                        child: Center(
                          child: GestureDetector(
                              onTap: () {
                                if(emailController.text == "" || passwordController.text == "") {
                                  showDialog(
                                    context: context,
                                    builder: (ctx) => AlertDialog(
                                      content: const Text("Username and Password is Required"),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(ctx).pop();
                                          },
                                          child: Container(
                                            color: Colors.deepPurple,
                                            padding: const EdgeInsets.all(14),
                                            child: const Text("OK"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  loginUser();
                                }
                              },
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                          )),
                        ),
                      ),
                      SizedBox(height: 30,),
                      FadeAnimation(1.5, GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => SignUpPage()));
                        },
                        child: Text("Dont have an Account ? Sign Up", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)
                      )),
=======
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey.shade100))),
                                  child: TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email Address",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: passwordController,
                                    obscuringCharacter:
                                        '*', //added obscuringCharacter here
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        2,
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ])),
                          child: Center(
                              child: GestureDetector(
                                  onTap: () {
                                    if (emailController.text == "" ||
                                        passwordController.text == "") {
                                      showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          content: const Text(
                                              "Username and Password is Required"),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(ctx).pop();
                                              },
                                              child: Container(
                                                color: Colors.deepPurple,
                                                padding:
                                                    const EdgeInsets.all(14),
                                                child: const Text("OK"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
                                      loginUser();
                                    }
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          1.5,
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
                              },
                              child: Text(
                                "Dont have an Account ? Sign Up",
                                style: TextStyle(
                                    color: Color.fromRGBO(143, 148, 251, 1)),
                              ))),
>>>>>>> 4f4a81a (Milestone 1 commit)
                    ],
                  ),
                )
              ],
            ),
          ),
<<<<<<< HEAD
        )
    );
  }
}
=======
        ));
  }
}
>>>>>>> 4f4a81a (Milestone 1 commit)
