import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/foundation/text_form_field.dart';
import 'package:shop_app/foundation/theme/colors.dart';

import '../../foundation/custom_eleveted_button.dart';

class LoginBottomSheet extends StatelessWidget {
 String? email='';
 String? password ='';
 TextEditingController? mailController= new TextEditingController();
TextEditingController? passwordController =new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      height: MediaQuery.of(context).size.height / 1.5,
      color: AppColor.whiteColor,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo-big.png',
                  height: 45,
                  width: 45,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 30,
                    ))
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Login ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: ' or ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  )),
              TextSpan(
                  text: 'Signup ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold))
            ])),
            const SizedBox(
              height: 35,
            ),
            CustomTextFormField(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              labelText: 'Password',
              hintText: 'Enter password',
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: 'New User ? ',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 13,
                    )),
                TextSpan(
                    onEnter: (event) => () {},
                    text: '  Register  ',
                    style: TextStyle(
                        color: AppColor.buttonColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ])),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomElevatedButton(
                      onPressed: () {},
                      text: 'CONTINUE',
                    ))),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(children: [
              const TextSpan(
                  text: 'Having trouble logging in ?   ',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 11.5,
                  )),
              TextSpan(
                  text: 'Get Help ',
                  style: TextStyle(
                      color: AppColor.buttonColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ])),
          ],
        ),
      ),
    );
  }
}
