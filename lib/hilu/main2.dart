import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List of Items',
      home: Scaffold(
        appBar: AppBar(
          title: Text('{ }  List of Items'),
          actions: [Icon(Icons.more_vert)],
        ),
        drawer: Drawer(
            child: Center(
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  //height: 100,
                  //width: 100,
                  alignment: Alignment.center,
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      'Hilena Abebe',
                      textAlign: TextAlign.center,
                    ),
                    accountEmail: Text(
                      'hiluab432@gmail.com',
                      textAlign: TextAlign.center,
                    ),
                    currentAccountPicture: CircleAvatar(
                      child: Image.asset('images/md.jpg'),

                      //child:Icons.asset('images/'),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Dashboard'),
                onTap: () {
                  // Add your navigation code here
                },
              ),
              ListTile(
                leading: Icon(Icons.data_object),
                title: Text('Items'),
                onTap: () {
                  // Add your navigation code here
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Add your navigation code here
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Account'),
                onTap: () {
                  // Add your navigation code here
                },
              ),
            ],
          ),
        )),
        body: ListView(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.desktop_windows_sharp,
                    size: 50,
                  ),
                  title: Text('Desktop',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Icon(
                    Icons.edit,
                  ),
                  subtitle: Text('\$200.0'),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    size: 50,
                  ),
                  title: Text(
                    'Smartphone',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$1000.0'),
                  contentPadding: EdgeInsets.all(2),
                  //dense: true,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.cable_sharp,
                    size: 60,
                  ),
                  title: Text(
                    'cable',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$10.0'),
                  contentPadding: EdgeInsets.all(2),
                  //dense: true,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mouse,
                    size: 50,
                  ),
                  title: Text(
                    ' mouse ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$200.0'),
                  contentPadding: EdgeInsets.all(2),
                  //dense: true,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.smart_screen,
                    size: 50,
                  ),
                  title: Text(
                    'Smart Screen',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$100.0'),
                  contentPadding: EdgeInsets.all(2),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(
                    Icons.tablet_android,
                    size: 50,
                  ),
                  title: Text(
                    'Tablet',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$200.0'),
                  contentPadding: EdgeInsets.all(2),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ListTile(
                  leading: Icon(Icons.camera_alt, size: 50),
                  title: Text(
                    'Camera',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.edit),
                  subtitle: Text('\$1000.0'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
