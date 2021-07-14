import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (appBar: AppBar(
      leading: Icon(
        Icons.menu,
      ),
      title: Text(
          "my first app"),
      actions: [
        IconButton(icon: Icon(Icons.notification_important),
          onPressed: () { print("notifiction clicked"); },),

        IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        Icon(Icons.help),
      ],
      backgroundColor: Colors.black ,
    ),
    body:(Column(

      children: [

        Padding(
          padding: const EdgeInsets.all(23.0),
          child: Container(
            width:  200,
           clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ) ,
            child: Stack(

              alignment: Alignment.bottomCenter ,
              children: [
                Image(image:
                NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/IslamSymbolAllahComp.PNG/220px-IslamSymbolAllahComp.PNG"),
                height: 100,
                width: 100,

                fit: BoxFit.fill
                  ,),
                Container(

                  width: 200,
                  color: Colors.black.withOpacity(0.23),
                  padding:EdgeInsets.symmetric(vertical: 10) ,
                  child: Text("allah",
                      textAlign: TextAlign.center ,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),),
                ),
              ],
            ),
          ),
        )
      ],
    )

    ),


    );

  }

}
