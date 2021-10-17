import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        indicatorColor: Colors.white,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: const Color(0xff085E55),
            bottom: const TabBar(tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ]),
            actions: [
              IconButton(
                onPressed: () => {},
                icon: Icon(Icons.search),
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert),
                color: Colors.white,
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "New group",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "New broadcast",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Linked devices",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Starred messages",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Payments",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
                onSelected: (item) => {print(item)},
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Column(children: [
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    ListTile(
                        title: Text('Keer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('See you tom'),
                        leading: CircleAvatar(
                          radius: 24.0,
                          child: ClipRRect(
                            child: Image.network('https://i.pravatar.cc/250'),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              '12:40 AM',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff20C253),
                              ),
                            ),
                            SizedBox(height: 12),
                            CircleAvatar(
                              backgroundColor: Color(0xff20C253),
                              child: const Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              radius: 11,
                            ),
                          ],
                        )),
                    ListTile(
                      title: Text('CC',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text('Okayyyy'),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/200'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Text('Yesterday'),
                    ),
                    ListTile(
                      title: Text('NanRaj',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      subtitle: Text('Byee byee'),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/300'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Text('Monday'),
                    ),
                  ],
                ))
              ]),
              Column(children: [
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text("nama"),
                    )
                  ],
                ))
              ]),
              Column(children: [
                Expanded(
                    child: ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "Boo",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(children: <Widget>[
                        Icon(Icons.call_made,
                        color: Color(0xff20C253),
                        size: 19,),
                        Text("  Yesterday, 11:24pm")
                      ]),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/200'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Color(0xff085E55),
                      ),
                    ),
                     ListTile(
                      title: Text(
                        "Chandu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(children: <Widget>[
                        Icon(Icons.call_received,
                        color: Colors.red,
                        size: 19,),
                        Text("  15 October, 10:09pm")
                      ]),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/250'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Color(0xff085E55),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Idkman",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(children: <Widget>[
                        Icon(Icons.call_received,
                        color: Color(0xff20C253),
                        size: 19,),
                        Text("  14 October, 10:00am")
                      ]),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/600'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Icon(
                        Icons.call,
                        color: Color(0xff085E55),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Kannss",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(children: <Widget>[
                        Icon(Icons.call_received,
                        color: Colors.red,
                        size: 19,),
                        Text("  15 October, 10:09pm")
                      ]),
                      leading: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/220'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      trailing: Icon(
                        Icons.videocam,
                        color: Color(0xff085E55),
                      ),
                    ),
                  ],
                ))
              ]),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.chat_bubble),
            backgroundColor: Color(0xff20C253),
            tooltip: 'Increment',
          ),
        ));
  }
}
