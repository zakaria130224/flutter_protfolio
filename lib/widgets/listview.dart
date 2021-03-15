import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_mobile/models/book.dart';

class ListCard extends StatefulWidget {
  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
List<Book> _books=[
  new Book("Himu", "Humayun Ahmed", "487187845"),
  new Book("Himu", "Humayun Ahmed", "487187845"),
  new Book("Himu", "Humayun Ahmed", "487187845")
];
  List<String> _list=[
    'Zakaria Ahammed',
    'Naznin Jeba',
    'Mihal',
    'Jahran'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _books.map((item)  {
        return Center(
          child: ListTile(
             leading: Icon(Icons.star),
            title: Text(item.Name),
            subtitle: Text(item.Author),
            tileColor: Color(1),

          ),
        );
      }).toList(),
    );
  }
}
