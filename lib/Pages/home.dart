import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold is kind of like our body within which everything comes
      //like head,body,stomach etc...here appbar is our head
      //appBar is property and AppBar() is widget
      //most of the times the name of property is same as the name of the widget
      appBar: AppBar(
        //let us give some title to the app....title takes the widget
        title: const Text("Learining App"),
      ),
      body: Center(
        child: Container(
          child: const Text("WELCOME TO 30 DAYS OF FLUTTER"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
