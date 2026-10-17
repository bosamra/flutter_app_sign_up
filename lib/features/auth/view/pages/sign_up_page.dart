import 'package:flutter_app_sign_up/core/const/colors.dart';
import 'package:flutter_app_sign_up/features/auth/view/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  ///Responsive Design
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Padding(
        padding: EdgeInsets.only(top: height * .1, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Welcome to our \ngrocery shop",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF16162E),
                ),
              ),
              SizedBox(height: height * .06),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * .03),
                    CustomTextfield(text: "Name"),
                    SizedBox(height: height * .03),
                    CustomTextfield(text: "Phone Number"),
                    SizedBox(height: height * .03),
                    CustomTextfield(text: "Password", isPassword: true),
                    SizedBox(height: height * .06),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF16162E),
                          ),
                        ),
                        arrowBtn(),
                      ],
                    ),
                    SizedBox(height: height * .04),
                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text(
                          "Alreday Have Account?",
                          style: TextStyle(color: Color(0xFF8B8B97)),
                        ),
                        Text(
                          "  Log In",
                          style: TextStyle(
                            color: MyColors.primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * .08),
                  ],
                ),
              ),
              SizedBox(height: height * .03),
            ],
          ),
        ),
      ),
    );
  }

  Widget arrowBtn() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 56,
        width: 108,
        decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Icon(Icons.arrow_forward, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
