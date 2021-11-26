import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: KingsleyHomePage(),
    );
  }
}

class KingsleyHomePage extends StatelessWidget {
  const KingsleyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Kings App"),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        body: Center(
          child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/profile.jpg")),
            title: Text("Juliana"),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 10),
                Text("Send the document")
              ],
            ),
            trailing: Column(
              children: [
                Icon(Icons.notifications_rounded),
                SizedBox(height: 1),
                Text('2:30')
              ],
            ),
          ),
        ));
  }
}
