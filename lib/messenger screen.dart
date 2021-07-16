import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ScreenMessenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.black,
                  ))),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ))),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[400]),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    Text(
                      "Search",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 110 ,
                child: ListView.separated(itemBuilder: (context, index) => itemBuilderStory(),
                    separatorBuilder: (context, index )=> SizedBox(
                      width: 20,

                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                  shrinkWrap: true,
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: ListView.separated(
                    itemBuilder: (context, index) => itemBuilderChat(),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                    itemCount: 15,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                ),
              )

            ],

          ),
        ),
      ),
    );
  }
  Widget itemBuilderStory() => Row(
    children: [
      Container(
        width: 50,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
                  radius: 30,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(right: 5, bottom: 9),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            Text(
              "youssef mostafa salem",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      SizedBox(
        width: 15,
      ),

    ],
  );
  Widget itemBuilderChat() => Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png'),
            radius: 30,
          ),
          Padding(
            padding:
            const EdgeInsets.only(right: 5, bottom: 9),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("youssef mostafa",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:
              TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                    child:
                    Text("hello my name is youssef", maxLines: 1, overflow: TextOverflow.ellipsis,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(color: Colors.blue[500],
                        shape: BoxShape.circle ),

                  ),
                ),
                Text("02:00 pm"),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
