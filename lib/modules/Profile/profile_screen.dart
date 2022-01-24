import 'package:flutter/material.dart';
import 'package:untitled/shared/components/setting_item.dart';
import 'package:untitled/shared/style/colors.dart';
class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          PopupMenuButton(
            icon: Image.asset('assets/images/more.png',width: 25,),
            offset:const Offset(0, 50),
            shape: const TooltipShape(),
            itemBuilder: (_) => <PopupMenuEntry>[
                 PopupMenuItem(
                  child: ListTile(
                    dense: true,
                    horizontalTitleGap: 0,
                    leading:Image.asset('assets/images/settings.png',width: 15,),
                    title: const Text('Settings'),
                  )),
                 PopupMenuItem(

                  child: ListTile(
                    horizontalTitleGap: 0,
                    dense: true,
                    leading: Image.asset('assets/images/logout.png',width: 15,),
                    title: const Text('Logout'),
                  )),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/profile.png',width: 80, ),
            Text(
              'Steven Job',
              style:
              TextStyle(fontSize: 28, color: hexSapphireColor),
            ),
            const SizedBox(height: 10,),
            Text(
              'SteveJob@gmail.com',
              style: TextStyle(color: hexSapphireColor),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SettingItem(headLine: 'Personal', headLine2: '6 Task', iconName: 'personal', color: hexPortageColor),
                SettingItem(headLine: 'Work', headLine2: '8 Task', iconName: 'work', color: hexSkyBlueColor),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SettingItem(headLine: 'Private', headLine2: '3 Task', iconName: 'private', color: hexGeraldineColor),
                SettingItem(headLine: 'Meeting', headLine2: '4 Task', iconName: 'meeting', color: hexLightGreenColor),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SettingItem(headLine: 'Events', headLine2: '4 Task', iconName: 'events', color: hexPortageColor),
                SettingItem(headLine: 'Create Board', headLine2: '6 Task', iconName: 'create', color: hexTonysPinkColor),
              ],
            ),
            SizedBox(height: 20,),



          ],
        ),
      ),
    );
  }

}
class TooltipShape extends ShapeBorder {
  const TooltipShape();

  final BorderSide _side = BorderSide.none;
  final BorderRadiusGeometry _borderRadius = BorderRadius.zero;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(_side.width);

  @override
  Path getInnerPath(
      Rect rect, {
        TextDirection? textDirection,
      }) {
    final Path path = Path();

    path.addRRect(
      _borderRadius.resolve(textDirection).toRRect(rect).deflate(_side.width),
    );

    return path;
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path();
    final RRect rrect = _borderRadius.resolve(textDirection).toRRect(rect);

    path.moveTo(0, 10);
    path.quadraticBezierTo(0, 0, 10, 0);
    path.lineTo(rrect.width - 30, 0);
    path.lineTo(rrect.width - 20, -10);
    path.lineTo(rrect.width - 10, 0);
    path.quadraticBezierTo(rrect.width, 0, rrect.width, 10);
    path.lineTo(rrect.width, rrect.height - 10);
    path.quadraticBezierTo(
        rrect.width, rrect.height, rrect.width - 10, rrect.height);
    path.lineTo(10, rrect.height);
    path.quadraticBezierTo(0, rrect.height, 0, rrect.height - 10);

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => RoundedRectangleBorder(
    side: _side.scale(t),
    borderRadius: _borderRadius * t,
  );
}