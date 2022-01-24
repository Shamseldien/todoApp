import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/bloc/app_cubit.dart';
import 'package:untitled/shared/bloc/app_states.dart';
import 'package:untitled/shared/components/today_task.dart';
import 'package:untitled/shared/style/colors.dart';
import 'package:untitled/shared/components/gridView_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hi, Steven',
                      style:
                          TextStyle(fontSize: 28, color: hexTExtHeadLineColor),
                    ),
                    Text(
                      'Let’s make this day productive',
                      style: TextStyle(color: hexTextGreyColor),
                    ),
                  ],
                ),
                Image.asset('assets/images/person.png', width: 30),
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'My Task',
                        style:
                        TextStyle(fontSize: 20, color: hexTExtHeadLineColor),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              GridItem(
                                index: 1,
                                text1: 'Completed Tasks',
                                onPressed: (){},
                                color: hexSkyBlueColor,
                                image: 'assets/images/completed.png',
                                text2: '36 Task',
                                textColor: hexTExtHeadLineColor,
                              ),
                              const SizedBox(height: 20,),
                              GridItem(
                                index: 2,
                                text1: 'Canceled',
                                onPressed: (){},
                                color: hexGeraldineColor,
                                image: 'assets/images/closed.png',
                                text2: '36 Task',
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20,),
                        Expanded(child: Column(
                          children: [
                            GridItem(
                              index: 4,
                              text1: 'Pending',
                              onPressed: (){},
                              color: hexPortageColor,
                              image: 'assets/images/pending.png',
                              text2: '36 Task',
                              textColor: Colors.white,
                            ),
                            const SizedBox(height: 20,),
                            GridItem(
                              index: 3,
                              text1: 'On',
                              onPressed: (){},
                              color: hexLightGreenColor,
                              image: 'assets/images/opened.png',
                              text2: '36 Task',
                              textColor: hexTExtHeadLineColor,
                            ),
                          ],
                        ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today Task',
                            style:
                            TextStyle(fontSize: 20, color: hexTExtHeadLineColor),
                          ),
                          Text(
                            'View all',
                            style:
                            TextStyle(fontSize: 12, color: hexPortageColor),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ListView.builder(
                        physics:const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context,index)=>const TodayTasks(),
                      ),
                    ),
                  ],
                ),
              ),
            )


          ],
        );
      },
    );
  }
}
