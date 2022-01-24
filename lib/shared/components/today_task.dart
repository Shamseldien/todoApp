import 'package:flutter/material.dart';
import 'package:untitled/shared/style/colors.dart';
class TodayTasks extends StatelessWidget {
  const TodayTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            height: 30,
            width: 2,
            decoration: BoxDecoration(
                color: hexPortageColor
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Cleaning Clothes',
              style:
              TextStyle(fontSize: 16, color: hexResolutionBlue),
            ),
            const SizedBox(height: 5,),
            Text(
              '07:00 - 07:15',
              style:
              TextStyle(fontSize: 14, color: hexEchoBlueColor),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: hexPortageColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(3)
                  ),
                  child: Text('Urgent',style: TextStyle(color: hexPortageColor,fontSize: 10),),
                ),
                const SizedBox(width: 15,),
                Container(
                  height: 20,
                  width: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: hexPortageColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(3)
                  ),
                  child: Text('Home',style: TextStyle(color: hexPortageColor,fontSize: 10),),
                ),
              ],
            )

          ],
        ),
        const Spacer(),
        InkWell(
            onTap: (){},
            borderRadius: BorderRadius.circular(5),
            child: Icon(Icons.more_vert_outlined,color: hexResolutionBlue,))
      ],
    );
  }
}
