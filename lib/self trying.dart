import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tring extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        Container(
          width: 14,

          child: IconButton(
             icon: Icon(Icons.help),
             color: Colors.amber,
            onPressed: () { print("you hit me"); },
          ),
        ),
        title:Text("hello that is me"),
        actions: [
             Container(
              child: IconButton( icon:Icon(Icons.help),
                color: Colors.black,
                onPressed: (){}
             ),
             )
        ],
      ),
      body: Column(
        children: [
          Expanded(child:
          Container(
            child: Text(
              "my first text"
            ),
          ),
          ),
          Expanded(child: Container(
            child: Text(
              "my second text"
            ),
          ),
          ),
          Expanded(child: Container(
            child:
              IconButton(icon:Icon( Icons.settings), onPressed: () { print("my sittings"); },
              ),
          ))
        ],
      ),

      ) ;

  }


}