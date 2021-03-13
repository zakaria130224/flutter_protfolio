import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {

  List<String> _list=[
    'Zakaria Ahammed',
    'Naznin Jeba',
    'Mihal',
    'Jahran'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _list.map((item)  {
        return Center(
          child: ListTile(
             leading: Icon(Icons.star),
            title: Text(item),
            tileColor: Color(1),

          ),
        );
      }).toList(),
    );
  }
}
