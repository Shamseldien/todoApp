import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled/shared/style/colors.dart';
class AuthenticationFormField extends StatelessWidget {
   String? hintText;
   String? prefixIcon;
   IconData? suffixIcon;


   AuthenticationFormField(
       {@required this.hintText,@required this.prefixIcon, this.suffixIcon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder:UnderlineInputBorder(
            borderSide: BorderSide(
                color:Colors.grey.withOpacity(.4)
            )
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:Colors.grey.withOpacity(.4)
            )
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
              color:Colors.grey.withOpacity(.4)
          )
        ),
        hintStyle: TextStyle(
            color: hexHintColor
        ),
        prefixIcon: Image.asset('assets/images/$prefixIcon'),
        suffixIcon: suffixIcon==null ? null : Icon(suffixIcon,size: 18,color: Colors.grey[400],),
      ),
    );
  }
}
