import 'package:flutter/material.dart';

class status_page extends StatelessWidget {
  const status_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: ListView(
        children: <Widget>[
          ListTile(
              title: Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 24.0,
                    child: ClipRRect(
                      child: Image.network('https://i.pravatar.cc/200'),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Color(0xff085E55),
                            child: Icon(
                              Icons.add,
                              size: 17,
                              color: Colors.white,
                            ),
                          )))
                ],
              )),
          SizedBox(
            height: 15,
          ),
          Text(
            "    Recent updates",
            style: TextStyle(
              color: Color(0xff808080),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          ListTile(
              title: Text(
                "Random",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("29 minutes ago"),
              leading: CircleAvatar(
                radius: 24.0,
                child: ClipRRect(
                  child: Image.network('https://i.pravatar.cc/300'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              )),
           ListTile(
              title: Text(
                "KC",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Today, 10:02 am"),
              leading: CircleAvatar(
                radius: 24.0,
                child: ClipRRect(
                  child: Image.network('https://i.pravatar.cc/600'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              )),
          SizedBox(
            height: 15,
          ),
          Text(
            "    Viewed updates",
            style: TextStyle(
              color: Color(0xff808080),
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          ListTile(
              title: Text(
                "BC Reddy",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Today, 9:04 am"),
              leading: CircleAvatar(
                radius: 24.0,
                child: ClipRRect(
                  child: Image.network('https://i.pravatar.cc/120'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              )),
           ListTile(
              title: Text(
                "Likss",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Yesterday, 2:31pm"),
              leading: CircleAvatar(
                radius: 24.0,
                child: ClipRRect(
                  child: Image.network('https://i.pravatar.cc/420'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              )),
          

        ],
      ))
    ]);
  }
}

class statusring extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final Paint paint = Paint();
    paint.isAntiAlias = true;
    paint.strokeWidth = 5.0;
    paint.color = Color(0xff085E55);
    paint.style = PaintingStyle.stroke;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    throw UnimplementedError();
  }
}
