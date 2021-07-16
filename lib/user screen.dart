import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserData{
  final int id;
  final String name;
  final String phone;

  UserData({
    required this.id,
    required this.name,
    required this.phone
});
}

class UserSCreen extends StatelessWidget {
  List<UserData> users = [
    UserData(id: 1, name: "youssef", phone: '01024750277'),
    UserData(id: 2, name: "said", phone: '010222277'),
    UserData(id: 3, name: "tata", phone: '22'),
    UserData(id: 4, name: "sheka", phone: '44'),
    UserData(id: 5, name: "Khalid", phone: '555'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
      "users"
        ),
      ),
      body:
      ListView.separated(
          itemBuilder: (context, index)=> buildItemUser(users[index]),
          separatorBuilder: (context, index)=>
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey,
            ),

          itemCount: users.length)
    );

  }
  Widget buildItemUser (UserData user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child:Text("${user.id}",
            style: TextStyle(fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${user.name}",
              style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
            Text("${user.phone}",
              style: TextStyle(fontSize: 16,
                color: Colors.grey,
              ),),

          ],
        ),

      ],
    ),
  );
}
