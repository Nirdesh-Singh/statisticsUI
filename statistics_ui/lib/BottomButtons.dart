import 'package:flutter/material.dart';

class BottomButtons extends StatefulWidget {
  const BottomButtons({Key? key}) : super(key: key);

  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 50.0,
                color: Colors.grey,
              )),
        ),
        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bar_chart,
                size: 50.0,
                color: Colors.green,
              )),
        ),
        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_balance_wallet_rounded,
                size: 50.0,
                color: Colors.grey,
              )),
        ),
        Expanded(
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                size: 50.0,
                color: Colors.grey,
              )),
        ),
      ],
    );
  }
}
