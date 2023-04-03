import 'dart:core';

import 'package:flutter/material.dart';

class ToDoCardItem extends StatefulWidget {
  final CircleAvatar cardCircle;
  final String cardText;
  final String topText;
  final String circleText;
  final Icon leftIcon;
  final String leftText;
  final Color topTextColor;

  const ToDoCardItem({
    super.key,
    required this.cardCircle,
    required this.topText,
    required this.cardText,
    required this.leftIcon,
    required this.leftText,
    required this.circleText,
    required this.topTextColor,
  });

  @override
  State<ToDoCardItem> createState() => _ToDoCardItemState();
}

class _ToDoCardItemState extends State<ToDoCardItem> {
  int cardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 220,
        //color: Colors.orange,
        decoration: BoxDecoration(
          border: Border.all(
              color: cardIndex == 3 ? Colors.blue : Colors.transparent),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  widget.cardCircle,
                  const SizedBox(width: 5),
                  Text(
                    widget.circleText,
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(width: 100),
                  Text(
                    widget.topText,
                    style: TextStyle(color: widget.topTextColor, fontSize: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.cardText,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  widget.leftIcon,
                  const SizedBox(width: 5),
                  Text(
                    widget.leftText,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
