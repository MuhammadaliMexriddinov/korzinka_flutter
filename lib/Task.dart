import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32)
                    ),
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage("assets/images/p1.png"),
                    )),
              ),
              const Text("Discover  Your", style: TextStyle(height: 4, fontSize: 32,fontWeight: FontWeight.bold )),
              const Text("Own Dream", style: TextStyle(height: 0.4, fontSize: 32,fontWeight: FontWeight.bold )),
              SizedBox(height: 32,),
              const Text("The  is a property that", style: TextStyle(height: 1, fontSize: 18, )),
              const Text("which also means the", style: TextStyle(height: 1, fontSize: 18, )),
              const Text("misspelled word is  underlined", style: TextStyle(height: 1, fontSize: 18, )),
              SizedBox(height: 32,),
              Container(
                margin: EdgeInsets.all(22),
                width: double.infinity,
                height: 72,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(22),
                                bottomLeft: Radius.circular(22)
                            ),
                          ),
                          child: Text("Sign In",style: TextStyle(color: Colors.white, height: 0,fontSize: 18),),
                        )),
                    Flexible( flex:1,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(22),
                              bottomRight: Radius.circular(22)
                          ),
                        ),
                        child: Text("Register",style: TextStyle(color: Colors.black, height: 0,fontSize: 18),),
                      ),)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

// class Choice {
//   const Choice({this.title, this.icon});
//   final String title;
//   final IconData icon;
// }
//
// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'Home', icon: Icons.home),
//   const Choice(title: 'Contact', icon: Icons.contacts),
//   const Choice(title: 'Map', icon: Icons.map),
//   const Choice(title: 'Phone', icon: Icons.phone),
//   const Choice(title: 'Camera', icon: Icons.camera_alt),
//   const Choice(title: 'Setting', icon: Icons.settings),
//   const Choice(title: 'Album', icon: Icons.photo_album),
//   const Choice(title: 'WiFi', icon: Icons.wifi),
// ];
