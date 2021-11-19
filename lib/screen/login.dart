import 'package:dicoding_newbie/screen/register.dart';
import 'package:dicoding_newbie/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Positioned(
                  top: -MediaQuery.of(context).size.height * .15,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: Container(
                      child: Transform.rotate(
                        angle: -pi / 3.5,
                        child: ClipPath(
                          clipper: ClipperWidget(),
                          child: Container(
                            height: MediaQuery.of(context).size.height * .5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffE6E6E6),
                                  Colors.greenAccent
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height * .2),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text: 'App',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Newbie',
                                  style: TextStyle(color: Colors.black, fontSize: 30),
                                ),
                              ]),
                        ),
                        SizedBox(height: 50),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Color(0xfff3f3f4),
                                          filled: true))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kata Sandi",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          fillColor: Color(0xfff3f3f4),
                                          filled: true))
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        // GestureDetector(
                        //   onTap: () => Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => HomeScreen(),
                        //     ),
                        //   ),
                        //   child: Container(
                        //     width: MediaQuery.of(context).size.width,
                        //     padding: EdgeInsets.symmetric(vertical: 15),
                        //     alignment: Alignment.center,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.all(Radius.circular(5)),
                        //       boxShadow: <BoxShadow>[
                        //         BoxShadow(
                        //             color: Colors.grey.shade200,
                        //             offset: Offset(2, 4),
                        //             blurRadius: 5,
                        //             spreadRadius: 2)
                        //       ],
                        //       gradient: LinearGradient(
                        //         begin: Alignment.centerLeft,
                        //         end: Alignment.centerRight,
                        //         colors: [
                        //           Color(0xff14279B),
                        //           Color(0xff14279B),
                        //         ],
                        //       ),
                        //     ),
                        //     child: Text(
                        //       'Login',
                        //       style: TextStyle(fontSize: 20, color: Colors.white),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerRight,
                          child: Text('Lupa Kata Sandi ?',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * .055),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Tidak punya akun ?',
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Daftar',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
                            child:
                            Icon(Icons.keyboard_arrow_left, color: Colors.black),
                          ),
                          Text('Kembali',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}