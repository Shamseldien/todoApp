import 'package:flutter/material.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: 10,
                  itemBuilder: (context,index)=>Text('data'),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: SizedBox(
                //height: 75,
                width: double.infinity,
                child: Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/home.png')),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/note.png')),
                    IconButton(
                        iconSize: 60,
                        onPressed: (){}, icon: Image.asset('assets/images/add.png')),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/mss.png')),
                    IconButton(onPressed: (){}, icon: Image.asset('assets/images/foo.png')),
                  ],
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
