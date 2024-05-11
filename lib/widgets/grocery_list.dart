//  //   ///
//  Import LIBRARIES
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
//  Import FILES
import '../data/dummy_items.dart';
import 'new_item.dart';
//  //   ///

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  @override
  Widget build(BuildContext context) {
    void addItem() {
      debugPrint('You tapped the add button');
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const NewItem(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Groceries',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(onPressed: addItem, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            // leading: const CircleAvatar(backgroundColor: Colors.green),
            leading: Container(
                width: 24,
                height: 24,
                color: groceryItems[index].category.color),
            title: Text(groceryItems[index].name),
            trailing: Text(groceryItems[index].quantity.toString()),
            onTap: () {
              print('You tapped on ${groceryItems[index].name}');
            },
          );
        },
      ),
    );
  }
}
