import 'package:flutter/material.dart';
import '../components/clipper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipPath(
                clipper: CircleTopClipper(),
                child: Container(
                  height: 210,
                  color: Color(0xFF488B8F),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Color(0xFF488B8F)),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 35),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                          color: Color(0xFFB3B1B0),
                          fontFamily: 'Poppins',
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Color(0xFFE5E4E3),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Color(0xFFB3B1B0),
                          fontFamily: 'Poppins',
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Color(0xFFE5E4E3),
                              width: 1,
                            )),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 4
                            )
                          ),
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                                color: Color(0xFF488B8F),
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ClipPath(
                clipper: CircleBottomClipper(),
                child: Container(
                  height: 210,
                  color: Color(0xFF488B8F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
