import 'package:flutter/material.dart';


class MiddleRow extends StatelessWidget {
  const MiddleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Top Spending',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.keyboard_double_arrow_down_rounded,
                color: Colors.grey, size: 35.0)),
      ],
    );
  }
}
