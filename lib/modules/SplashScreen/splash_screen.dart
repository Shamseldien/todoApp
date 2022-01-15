import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/modules/Authentication/Login/login_screen.dart';
import 'package:untitled/shared/colors.dart';
import 'package:untitled/shared/components/default_button.dart';
import 'package:untitled/shared/navigation/Navigation.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: SvgPicture.asset('assets/images/landing.svg')),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Dailoz',style: TextStyle(
                  color: mainColor,
                  fontSize: 32
                ),),
                const SizedBox(height: 15,),
                Text('Plan what you will do to be more organized for today, tomorrow and beyond',style: TextStyle(
                  color: hexResolutionBlue,
                ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DefaultButton(
                  onPressed: (){
                    navigateTo(
                      context: context,
                      screen: const LoginScreen()
                    );
                  },
                  title: 'Login',
                ),
                const SizedBox(height: 15,),
                Text('Sign Up',style: TextStyle(
                    color: mainColor,
                    fontSize: 16
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
