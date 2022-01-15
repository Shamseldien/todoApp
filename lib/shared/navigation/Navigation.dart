import 'package:flutter/material.dart';

void navigateTo({@required context,@required screen})=>Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));

void navigateToAndFinish({@required context,@required screen})=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>screen), (route) => false);