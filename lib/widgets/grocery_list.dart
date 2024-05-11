//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
import '../data/dummy_items.dart';
//  //   ///

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Groceries',
          style: TextStyle(color: Colors.white),
        ),
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
// title: Text('Item ${groceryItems[index].name}'),
//             subtitle: Text(
//                 // '${groceryItems[index].quantity} x \$${groceryItems[index].price}'),
//                 '${groceryItems[index].quantity} x \$${2.11}'),