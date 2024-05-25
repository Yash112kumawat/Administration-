import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yami_seller/const/const.dart';
import 'package:yami_seller/views/home_screen/Home.dart';
import 'package:yami_seller/views/widgets/button.dart';
import 'package:yami_seller/views/widgets/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              30.heightBox,
              normalText(text: welcome, size: 18.0),
              20.heightBox,
              Row(
                children: [
                  Image.asset(
                    iclogo,
                    width: 70,
                    height: 70,
                  )
                      .box
                      .border(color: white)
                      .rounded
                      .padding(EdgeInsets.all(8))
                      .make(),
                  10.widthBox,
                  boldText(text: appname, size: 20.0),
                ],
              ),
              60.heightBox,
              Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: textfieldGrey,
                      prefixIcon: Icon(
                        Icons.email,
                        color: purpleColor,
                      ),
                      border: InputBorder.none,
                      hintText: emailHint,
                    ),
                  ),
                  10.heightBox,
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: textfieldGrey,
                      prefixIcon: Icon(
                        Icons.password,
                        color: purpleColor,
                      ),
                      border: InputBorder.none,
                      hintText: passwordHint,
                    ),
                  ),
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: normalText(
                            text: forgotPassword, color: purpleColor)),
                  ),
                  20.heightBox,
                  SizedBox(
                      width: context.screenWidth - 100,
                      child: Button(
                        title: login,
                        onpress: () {
                          Get.to(() => Home());
                        },
                      ))
                ],
              )
                  .box
                  .white
                  .rounded
                  .outerShadowMd
                  .padding(EdgeInsets.all(12))
                  .make(),
              10.heightBox,
              Center(child: normalText(text: anyProblem, color: lightGrey)),
              Spacer(),
              Center(child: boldText(text: credit)),
              20.heightBox
            ],
          ),
        ),
      ),
    );
  }
}
