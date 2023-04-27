import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String email = 'mercydagim542@gmail.com';
  final String name = 'Mihiret Dagim';
  final String avatarImage = 'C:\Users\ADOXA\Desktop\merr.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '$name',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            '$name List of Items',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
          leading: CircleAvatar(
            backgroundImage: NetworkImage(avatarImage),
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return buildItem(items[index]);
          },
        ),
      ),
    );
  }

  Widget buildItem(Item item) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(item.iconData),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: TextStyle(fontSize: 16)),
                Text(item.price, style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final String price;
  final IconData iconData;

  Item(this.title, this.price, this.iconData);
}

final List<Item> items = [
  Item('Desktop', '\$200.0', Icons.desktop_windows),
  Item('Smart Phone', '\$1000.0', Icons.smartphone),
  Item('Cable', '\$10.0', Icons.usb),
  Item('Mouse', '\$200.0', Icons.mouse),
  Item('Smart Screen', '\$200.0', Icons.tv),
  Item('Tablet', '\$1000.0', Icons.tablet),
  Item('Camera', '\$1000.0', Icons.camera_alt),
];
