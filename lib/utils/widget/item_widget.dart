import 'package:catalouge_app/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  final Item item;

  const Itemwidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",style: TextStyle(
          fontSize : 25,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,

        ),),
      ),
    );
  }
}
