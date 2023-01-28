import 'package:flutter/material.dart';

class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Stocks> {
  var date = ['Jan 12, 2022', 'Yesterday', 'Jan 16, 2022'];
  var companies = ['Starbucks', 'Transfer', 'Youtube'];
  var amt = [150.00, 85.00, 11.99];
  var img = ['starbucks.png', 'person.jpg', 'youtube.png'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: companies.length,
        itemBuilder: (context, index) {
          return ListTileTheme(
            selectedTileColor: Colors.green,
            child: Card(
              child: ListTile(
                selectedTileColor: Colors.green,
                title: Text(companies[index]),
                subtitle: Text(date[index]),
                leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/${img[index]}')),
                trailing: Text(
                  '-\$ ${amt[index].toString()}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[300],
                      fontSize: 20.0),
                ),
              ),
            ),
          );
        });
  }
}
