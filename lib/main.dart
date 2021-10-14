import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        indicatorColor: Colors.white,

        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

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
                icon: const Icon(Icons
                    .more_vert), //don't specify icon if you want 3 dot menu
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
          body: Column(children: [
            Expanded(
                child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Keer'),
                  subtitle: Text('See you tom'),
                  leading: CircleAvatar(
                    radius: 24.0,
                    child: ClipRRect(
                      child: Image.network('https://picsum.photos/250?image=9'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  trailing: Text('12:40 AM'),
                ),
                ListTile(
                  title: Text('CC'),
                  subtitle: Text('Okayyyy'),
                  leading: CircleAvatar(
                    radius: 24.0,
                    child: ClipRRect(
                      child: Image.network('https://picsum.photos/250?image=9'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  trailing: Text('Yesterday'),
                ),
                ListTile(
                  title: Text('NanRaj'),
                  subtitle: Text('Byee byee'),
                  leading: CircleAvatar(
                    radius: 24.0,
                    child: ClipRRect(
                      child: Image.network('https://picsum.photos/250?image=9'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  trailing: Text('Monday'),
                ),
              ],
            ))
          ]),

          floatingActionButton: FloatingActionButton(
            onPressed: () => {},
            child: const Icon(Icons.chat_bubble),
            backgroundColor: Color(0xff20C253),
            tooltip: 'Increment',
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
