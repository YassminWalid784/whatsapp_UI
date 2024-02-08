import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.emoji_emotions_rounded),
              prefixIconColor: Colors.white,
              suffixIcon: Icon(Icons.attach_file_rounded),
              suffixIconColor: Colors.white,
              hintText: "Type a Message",
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: buildOutlineInputBorder(),
              focusedBorder: buildOutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
              )),
          child: Icon(
            Icons.mic,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: Colors.white,
        width: 1,
      ),
    );
  }
}
