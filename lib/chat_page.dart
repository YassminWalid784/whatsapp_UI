import 'package:flutter/material.dart';
import 'package:whatsapp/message.dart';

import 'chat_item.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back),
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/person1.jpg"),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Person",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              // ChatItem(
              //   message: "this is my First message",
              //   image: "assets/images/person1.jpg",
              // ),
              // SizedBox(
              //   height: 12,
              // ),
              // Directionality(
              //   textDirection: TextDirection.rtl,
              //   child: ChatItem(
              //     message: "this is my Second message",
              //     image: "assets/images/person2.jpg",
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index % 2 == 1) {
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: ChatItem(
                            message: "This is my Second Message",
                            image: "assets/images/person2.jpg"),
                      );
                    }
                    return ChatItem(
                        message: "This is my First Message",
                        image: "assets/images/person1.jpg");
                  },
                ),
              ),
              Message(),
            ],
          ),
        ),
      ),
    );
  }
}
