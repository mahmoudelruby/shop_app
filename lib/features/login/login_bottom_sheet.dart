import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/features/home_Page/home_screen.dart';
import 'package:shop_app/features/register_Page/register_page.dart';
import 'package:shop_app/foundation/text_form_field.dart';
import 'package:shop_app/foundation/theme/colors.dart';

import '../../foundation/custom_eleveted_button.dart';

class LoginBottomSheet extends StatefulWidget {
  /// Constructors for public widgets should have a named key parameter
  const LoginBottomSheet({Key? key}) : super(key: key);

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  late final TextEditingController controller;

  @override
  void initState() {
    /// When it is stateful initialize controllers in the init method
    controller = TextEditingController();
    super.initState();
  }

  /// And don't forget the dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// remove unnecessary new keyword
    /// Move the variables that changes with the widget to the build to be reset when the widget rebuilds
    /// When you have a text editing controller in your widget convert it to stateful widget to use dispose method to remove it from memory
    /// TextEditingController? mailController =  TextEditingController();
    /// TextEditingController? passwordController =  TextEditingController();
    /// String? email = '';
    /// String? password = '';
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

            /// Use const keyword for better performance
            const CustomTextFormField(
              labelText: 'Email',
              hintText: 'Enter your email',
            ),
            const SizedBox(
              height: 30,
            ),

            /// Use const keyword for better performance

            const CustomTextFormField(
              labelText: 'Password',
              hintText: 'Enter password',
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: Row(
              children: [
                // Use const keyword for better performance

                const Text("New User ?"),
                InkWell(
                  onTap: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    }
                  },

                  /// Use const keyword for better performance

                  child: const Text(
                    "Register ",
                    style: TextStyle(color: AppColor.buttonColor),
                  ),
                )
              ],
            )),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      /// Use const to improve performance

                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  text: 'CONTINUE',
                ),
              ),
            ),

            /// Use const keyword for better performance

            const SizedBox(
              height: 20,
            ),

            /// Use const keyword for better performance

            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
