import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

// Define the custom color constant
const Color customColor = Color(0xFF2ADBD8);

class ChatSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: customColor.withOpacity(0.2), // Use custom color with opacity for lighter shade
              ),
              child: Text(
                "Hello, what I can do for you? You can book an appointment directly.",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
                decoration: BoxDecoration(
                  color: customColor, // Replace with custom color
                ),
                child: Text(
                  "Hello Doctor, Are you there?",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
