import 'package:flutter/material.dart';
import 'package:shop_app/features/profile/profile_screen.dart';
import 'package:shop_app/foundation/theme/colors.dart';
import '../../foundation/custom_eleveted_button.dart';
import '../../foundation/text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {},
          /// Use const with constructor to improve performance
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        /// Use const with constructor to improve performance
        title: const Text(
          'Complete Your Signup',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          /// Use const with constructor to improve performance
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Use const with constructor to improve performance
              const Text(
                'Register ',
                style: TextStyle(
                  color: AppColor.buttonColor,
                  fontSize: 30,
                ),
              ),
              /// Use const with constructor to improve performance
              const Text(
                'New User ',
              ),
              const SizedBox(
                height: 35,
              ),
              /// Use const with constructor to improve performance
              const CustomTextFormField(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 15,
              ),
              /// Use const with constructor to improve performance
              const CustomTextFormField(
                labelText: 'Password',
                hintText: 'Enter password',
              ),
              const SizedBox(
                height: 15,
              ),
              /// Use const with constructor to improve performance
              const CustomTextFormField(
                labelText: 'Full Name',
                hintText: 'Enter full name',
              ),
              const SizedBox(
                height: 15,
              ),
              /// Use const with constructor to improve performance
              const CustomTextFormField(
                labelText: 'Phone Number',
                hintText: 'Enter your number',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                /// width: MediaQuery.of(context).size.width, deprecated
                width: MediaQuery.sizeOf(context).width,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      /// Use const to improve performance

                      MaterialPageRoute(builder: (context) => const ProfilePage()),
                    );
                  },
                  text: 'Register',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
