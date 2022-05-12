import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),),
      ),
    body: Center(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextButton(
              onPressed: (){
                setState(() {
                  counter--;
                  print(counter);
                });
              },
              child: Text(
            " Minus ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
          )),
          SizedBox(
            width: 20,
          ),
          Text(
              "$counter",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.w900,
          ),),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(
                onPressed: (){
                  setState(() {
                    counter ++;
                    print(counter);
                  });
                },
                child: Text(
                    " Plus  ",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,),
                )),
          ),

        ],
      ),
    ),
    );
  }
}
