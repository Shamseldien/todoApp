import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/shared/bloc/app_cubit.dart';
import 'package:untitled/shared/bloc/app_states.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          // bottomNavigationBar: SalomonBottomBar(
          //   currentIndex:cubit.currentIndex,
          //   onTap: (index){
          //     cubit.changeCurrentIndex(index: index);
          //   },
          //   items: [
          //     /// Home
          //     SalomonBottomBarItem(
          //       icon: Image.asset('assets/images/home.png',width: 30),
          //       title: const Text("Home"),
          //       selectedColor: Colors.purple,
          //       activeIcon:Image.asset('assets/images/home2.png',width: 30),
          //     ),
          //
          //     /// Likes
          //     SalomonBottomBarItem(
          //       icon: Image.asset('assets/images/note.png',width: 30,),
          //       title:const Text("Likes"),
          //       selectedColor: Colors.pink,
          //       activeIcon: Image.asset('assets/images/notes2.png',width: 30,),
          //     ),
          //
          //     /// Search
          //     SalomonBottomBarItem(
          //       icon: Image.asset('assets/images/add.png',width: 30),
          //       title:const Text("Search"),
          //       selectedColor: Colors.orange,
          //       activeIcon: Image.asset('assets/images/add2.png',width: 30),
          //     ),
          //
          //     /// Profile
          //     SalomonBottomBarItem(
          //       icon: Image.asset('assets/images/mss.png',width: 30),
          //       title:const Text("Profile"),
          //       selectedColor: Colors.teal,
          //       activeIcon: Image.asset('assets/images/mss2.png',width: 30),
          //     ),
          //
          //     SalomonBottomBarItem(
          //       icon: Image.asset('assets/images/foo.png',width: 30),
          //       title:const Text("Profile"),
          //       selectedColor: Colors.teal,
          //       activeIcon:  Image.asset('assets/images/foo2.png',width: 30),
          //     ),
          //   ],
          // ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex:cubit.currentIndex,
                 type: BottomNavigationBarType.fixed,
                 elevation: 0.0,
                 onTap: (index){
                    cubit.changeCurrentIndex(index: index);
                      },
              items:[
                BottomNavigationBarItem(
                      icon: Image.asset('assets/images/home.png',width: 30),
                      activeIcon:Image.asset('assets/images/home2.png',width: 30),
                      label: ''
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/note.png',width: 30,),
                      activeIcon: Image.asset('assets/images/notes2.png',width: 30,),
                      label: ''
                    ),

                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/add2.png',width: 50),
                      activeIcon: Image.asset('assets/images/add2.png',width: 50),
                      label: ''
                    ),

                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/mss.png',width: 30),
                      activeIcon: Image.asset('assets/images/mss2.png',width: 30),
                      label: ''
                    ),

                    BottomNavigationBarItem(
                      icon: Image.asset('assets/images/foo.png',width: 30),
                      activeIcon:  Image.asset('assets/images/foo2.png',width: 30),
                      label: ''
                    ),


              ]
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: PageView.builder(
                itemCount: cubit.screens.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>cubit.screens[cubit.currentIndex],),
            ),
          ),
        );
      },
    );
  }
}
