import 'package:flutter/material.dart';
import 'package:whatsapp_app/Widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name": "sakshi",
      "lastmsg": "love you",
      "time": "06:45 am",
      "msg": "1",
    },
    {
      "images":
          "https://t4.ftcdn.net/jpg/02/69/77/51/360_F_269775107_QoAlpDLxD3Cwq9omJyySO5hGG5Loyjby.jpg",
      "name": "Sophia",
      "lastmsg": "How are you?",
      "time": "07:10 am",
      "msg": "3",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/05/12/45/89/360_F_512458927_tZ3tL1K8c5iP6UeXEDVuEl4u9hLHzUQb.jpg",
      "name": "Liam",
      "lastmsg": "See you soon!",
      "time": "08:25 am",
      "msg": "2",
    },
    {
      "images":
          "https://t4.ftcdn.net/jpg/02/12/98/65/360_F_212986531_Q5x3N5cXvB6iZEC75LkpUszzyvV4LQ0D.jpg",
      "name": "Olivia",
      "lastmsg": "Thanks!",
      "time": "09:40 am",
      "msg": "4",
    },
    {
      "images":
          "https://t4.ftcdn.net/jpg/03/44/21/75/360_F_344217589_ZN8Xxg2clSb6zHzJ8ZKcazSnPoO27f6K.jpg",
      "name": "Noah",
      "lastmsg": "Good morning",
      "time": "10:00 am",
      "msg": "6",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/45/39/21/360_F_245392198_0w5aJg5e2EzG9RjLeCj8nWz7XqkjkblU.jpg",
      "name": "Emma",
      "lastmsg": "Ok, done!",
      "time": "10:45 am",
      "msg": "1",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/03/78/67/91/360_F_378679108_UC4zyBPn8o5Zm3aH9tL9hZKzX5pQmFQe.jpg",
      "name": "James",
      "lastmsg": "What’s up?",
      "time": "11:30 am",
      "msg": "8",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/88/11/22/360_F_288112209_Wkkx1v9TxmHtNPG8d1dQ3cUgUuE5JpQu.jpg",
      "name": "Ava",
      "lastmsg": "Call me later",
      "time": "12:15 pm",
      "msg": "5",
    },
    {
      "images":
          "https://t4.ftcdn.net/jpg/03/21/45/67/360_F_321456798_LNEjtdApzO9oTf7XEXG7zQdY6n6aJ3hD.jpg",
      "name": "Ethan",
      "lastmsg": "Let’s go!",
      "time": "01:05 pm",
      "msg": "9",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: UiHelper.customText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: UiHelper.customText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.customText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        color: Color(0XFF026500),
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color(0XFF036A01),
                        child: UiHelper.customText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),

      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0XFF008665),
        child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
      ),
    );
  }
}
