import 'package:flutter/material.dart';
class listingViewScr extends StatefulWidget {
  const listingViewScr({Key? key}) : super(key: key);

  @override
  _listingViewScrState createState() => _listingViewScrState();
}

class _listingViewScrState extends State<listingViewScr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BuildingList(),
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  const Mywidget({Key? key, required this.number }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item ${number}'),
    );
  }
}

class BuildingList extends StatefulWidget {
  const BuildingList({Key? key}) : super(key: key);

  @override
  _BuildingListState createState() => _BuildingListState();
}

class _BuildingListState extends State<BuildingList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Mywidget(number: index),
            onTap: () {
              setState(() {});
            },
          );
        },
    );
  }}


