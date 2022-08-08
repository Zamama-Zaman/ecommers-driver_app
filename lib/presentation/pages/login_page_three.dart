// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ugks_limousine_driver_app/presentation/pages/default_page.dart';

import '../../size_config.dart';

class LoginPageThree extends StatelessWidget {
  const LoginPageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFF201B19),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight / 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Image.asset(
                  "assets/images/logo.png",
                  // height: 50,
                  // width: 150,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 56,
                width: 330,
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Login to start driving",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "Email",
                      style: TextStyle(
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 330,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    Text(
                      "Password",
                      style: TextStyle(
                        color: Color(0xFF201B19).withOpacity(.7),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: double.infinity,
                      color: Colors.transparent,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DefaultPage(),
                    ),
                  );
                },
                child: Container(
                  width: 330,
                  height: 56,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xFFF24A40),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(80)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                alignment: Alignment.center,
                child: Text(
                  "Don’t have an account yet?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10)),
                alignment: Alignment.center,
                child: Text(
                  "Become a Partner",
                  style: TextStyle(
                    color: Color(0xFFF24A40),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
