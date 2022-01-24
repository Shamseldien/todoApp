import 'package:flutter/material.dart';
import 'package:untitled/shared/style/colors.dart';

class GridItem extends StatelessWidget {
   late String image;
   late String text1;
   late String text2;
   late Color color;
   late Color textColor;
   late int index;
   late void Function ()  onPressed;

   GridItem({required this.image,required this.index, required this.text1, required this.text2, required this.color, required this.onPressed,required this.textColor});

  @override
  Widget build(BuildContext context) {
   return Container(
     height: index.isEven ? 116 : 152,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color:color.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 20,

              offset: const Offset(0, 1), // changes position of shadow
            ),
          ]
      ),
      child: Stack(
         children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(image,scale: 3,),
                      IconButton(onPressed: onPressed, icon:  Icon(Icons.arrow_forward,size: 15,color: textColor,))
                    ],
                  ),

                  const SizedBox(height: 5,),
                  Text(text1,style: TextStyle(fontSize: 16,color: textColor),),
                  const SizedBox(height: 5,),
                  Text(text2,style: TextStyle(fontSize: 16,color: textColor),),

                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
             child: SizedBox(
              height: 50,
              width: 100,
              child: Image.asset(
                'assets/images/arrow.png',
                fit: BoxFit.fitWidth,
                color: Colors.white.withOpacity(.2),
              ),
            ),
          ),
        ],
      )
    );

  }
}
