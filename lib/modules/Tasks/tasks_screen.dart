import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled/shared/components/today_task.dart';
import 'package:untitled/shared/style/colors.dart';

class TasksScreen extends StatefulWidget {
  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  DatePickerController controller = DatePickerController();

  void jumpToCurrentDate() {
    Future.delayed(const Duration(milliseconds: 3)).then((value) {
      controller.jumpToSelection();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    jumpToCurrentDate();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
                fillColor: hexTextFieldColor,
                filled: true,
                suffixIcon: Image.asset(
                  'assets/images/clear.png',
                  scale: 3,
                ),
                prefixIcon: Image.asset(
                  'assets/images/search.png',
                  scale: 2.5,
                ),
                isDense: true,
                hintText: 'Search for',
                hintStyle: TextStyle(color: hexTextFieldHintColor),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: hexTextFieldColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: hexTextFieldColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: hexTextFieldColor))),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Task',
                style: TextStyle(fontSize: 20, color: hexTExtHeadLineColor),
              ),
              const Spacer(),
              Image.asset(
                'assets/images/cal.png',
                width: 14,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'August',
                style: TextStyle(fontSize: 12, color: hexChambrayColor),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          DatePicker(
            DateTime(2022),
            initialSelectedDate: DateTime.now(),
            selectionColor: mainColor,
            controller: controller,
            selectedTextColor: Colors.white,
            dayTextStyle: TextStyle(color: hexSapphireColor),
            monthTextStyle: TextStyle(color: hexSapphireColor),
            dateTextStyle: TextStyle(color: hexSapphireColor),
            onDateChange: (date) {
              // New date selected
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Today',
            style: TextStyle(fontSize: 20, color: hexTExtHeadLineColor),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>const Divider(thickness: 0.9,),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  height: index == 2 ? 30 : 100,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '07:00',
                        style: TextStyle(fontSize: 14, color: hexTExtHeadLineColor),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      index == 2 ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('          You don’t have any schedule or',style:TextStyle(color: hexTextFieldHintColor),),
                          InkWell(
                            onTap: (){},
                            child: SizedBox(
                                width: 47,
                                child: Text(' +Add',style: TextStyle(color: hexResolutionBlue,fontSize:12 ),textAlign: TextAlign.center,)),
                          )
                        ],
                      ):
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context,index)=>  const SizedBox(
                              height: 114,
                              width: 190,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: TodayTasks(),
                              )),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
