import 'package:flutter/material.dart';
import 'login_page.dart';
import '../components/clipper.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('To Do List',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF488B8F)),
                      )),
                ],
              ),
              SizedBox(
                height: 104,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      width: 327,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFADD2C9)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            color: Colors.black.withAlpha(90),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Sign Up',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xFF488B8F)),
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      width: 327,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Color(0xFF488B8F),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFF488B8F)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Log In',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xFFFFFFFF)),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ClipPath(
                clipper: CircleBottomClipper(),
                child: Container(
                  height: 210,
                  color: Color(0xFF488B8F),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
