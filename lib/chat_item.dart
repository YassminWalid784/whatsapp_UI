import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String message;
  final String image;

  const ChatItem({
    super.key,
    required this.message,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.white),
            ),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
