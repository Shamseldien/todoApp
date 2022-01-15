import 'package:flutter/material.dart';
import 'package:untitled/shared/colors.dart';
class DefaultButton extends StatelessWidget {
   String? title;
   void Function()? onPressed;

   DefaultButton({Key? key, @required this.title,@required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(14)
      ),
      child: TextButton(
         onPressed: onPressed,
        child: Text(title!,style:const TextStyle(
            color: Colors.white,
            fontSize: 16
        ),),
      ),
    );
  }
}
