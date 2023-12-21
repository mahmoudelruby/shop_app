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
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Complete Your Signup',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register ',
                style: TextStyle(color: AppColor.buttonColor, fontSize: 30),
              ),
              Text('New User '),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                labelText: 'Password',
                hintText: 'Enter password',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                labelText: 'Full Name',
                hintText: 'Enter full name',
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                labelText: 'Phone Number',
                hintText: 'Enter your number',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
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
