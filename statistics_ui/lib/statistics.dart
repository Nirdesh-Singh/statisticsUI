import 'package:flutter/material.dart';
import 'package:statistics_ui/BottomButtons.dart';
import 'package:statistics_ui/MiddleRow.dart';
import 'package:statistics_ui/stocks.dart';
import 'DayMonthWeekYear.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Statistics', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        elevation: 0.0,
        actions: const [
          Icon(Icons.file_download_outlined, color: Colors.black, size: 30.0)
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const DayWeekMonthYear(),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset('assets/plot.jpg')),
            const MiddleRow(),
            const Stocks(),
            const BottomButtons(),
          ],
        ),
      ),
    );
  }
}
