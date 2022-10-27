import 'package:flutter/material.dart';
import 'package:zoom/utils/color.dart';

class MeetingOption extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onchange;
  const MeetingOption({
    Key? key,
    required this.text,
    required this.isMute,
    required this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Switch.adaptive(
            value: isMute,
            onChanged: onchange,
          ),
        ],
      ),
    );
  }
}
