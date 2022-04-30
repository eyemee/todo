import 'dart:ui';

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(scale: 1.3,
            child: Checkbox(
              checkColor: Colors.greenAccent,
              value: false, onChanged: (bool) {},),
        ),
        Text('Your task for today',
          style: TextStyle(
            fontFamily: 'NunitoSans-Black',
            fontSize: 18.0,
            fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}