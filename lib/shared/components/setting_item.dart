import 'package:flutter/material.dart';
import 'package:untitled/shared/style/colors.dart';
class SettingItem extends StatelessWidget {
  late String headLine;
  late String headLine2;
  late String iconName;
  late Color  color;


  SettingItem({required this.headLine, required this.headLine2, required this.iconName,required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 138,
      width: 138,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color.withOpacity(0.25),
          borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/$iconName.png',width: 48,),
          const SizedBox(height: 10,),
          Text(
            '$headLine',
            style: TextStyle(color: color),
          ),
          const SizedBox(height: 5,),
          Text(
            '$headLine2',
            style: TextStyle(color: hexResolutionBlue.withOpacity(0.5),fontSize: 12),
          ),
        ],
      ),
    );
  }
}
