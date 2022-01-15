import 'package:flutter/material.dart';
import 'package:untitled/modules/Authentication/Login/login_screen.dart';
import 'package:untitled/shared/colors.dart';
import 'package:untitled/shared/components/authentication_form_field.dart';
import 'package:untitled/shared/components/default_button.dart';
import 'package:untitled/shared/navigation/Navigation.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('SignUp',style: TextStyle(color: mainColor,fontSize: 36),),
              const SizedBox(height: 15,),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AuthenticationFormField(
                    hintText: 'Username',
                    prefixIcon: 'mail.png',

                  ),
                  const SizedBox(height: 35,),
                  AuthenticationFormField(
                    hintText: 'Email ID or Username',
                    prefixIcon: 'mail.png',

                  ),
                  const SizedBox(height: 35,),
                  AuthenticationFormField(
                    hintText: 'Password',
                    prefixIcon: 'pass.png',
                    suffixIcon: Icons.remove_red_eye_outlined,
                  ),

                ],
              ),
              const SizedBox(height: 15,),
              DefaultButton(
                onPressed: (){
                },
                title: 'Create',
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                  const Expanded(
                      flex: 1,
                      child:  Text('or with',style:TextStyle(fontSize: 12,color: Colors.grey),textAlign: TextAlign.center,)),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/fb.png'),
                  const SizedBox(width: 15,),
                  Image.asset('assets/images/google.png'),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Have any account?',style: TextStyle(color: hexResolutionBlue),),
                  TextButton(onPressed: (){
                    navigateToAndFinish(context: context, screen: LoginScreen());
                  },child: Text('Sign In',style: TextStyle(color: hexResolutionBlue),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
