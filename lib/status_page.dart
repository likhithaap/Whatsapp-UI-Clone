import 'package:flutter/material.dart';
import 'dart:math' as math;

class status_page extends StatelessWidget {
  const status_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
          child: ListView(
        children: <Widget>[
          CustomPaint(
            size: Size(2, 2),
            painter: statusring(),
          ),
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
          ListTile(
              title: Text(
                "YSI",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Yesterday, 11:49 pm"),
              leading: CircleAvatar(
                radius: 24.0,
                child: ClipRRect(
                  child: Image.network('https://i.pravatar.cc/800'),
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
    paint.strokeWidth = 2.0;
    paint.color = Color(0xff20C253);
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;

    canvas.drawCircle(Offset(40, 143), 27, paint);
    //Arcs around listtile 2
    canvas.drawArc(new Rect.fromLTWH(13, 188, 54, 54), 0, 3.14, false, paint);
    canvas.drawArc(new Rect.fromLTWH(13, 188, 54, 54), 3.3, 2.8, false, paint);

    //Arcs around listtile 3
    canvas.drawArc(new Rect.fromLTWH(13, 260, 54, 54), 0, 1.1, false, paint);
    canvas.drawArc(new Rect.fromLTWH(13, 260, 54, 54), 1.3, 1.1, false, paint);

    canvas.drawArc(new Rect.fromLTWH(13, 260, 54, 54), 2.6, 1.1, false, paint);

    

    canvas.drawArc(new Rect.fromLTWH(13, 260, 54, 54), 5.1, 1.0, false, paint);

    final Paint paint1 = Paint();
    paint.isAntiAlias = true;
    paint.strokeWidth = 2.0;
    paint.color = Colors.grey;
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    //arcs around listtile 1 in viewed updates
    canvas.drawArc(new Rect.fromLTWH(13, 365, 54, 54), 0, 1.8666, false, paint);
    canvas.drawArc(new Rect.fromLTWH(13, 365, 54, 54), 2.0666, 1.8666, false, paint);
    canvas.drawArc(new Rect.fromLTWH(13, 365, 54, 54), 4.1333, 1.8666, false, paint);
    //circle around listtile 2 in viewed  updates
    canvas.drawCircle(Offset(40, 464), 27, paint);
    //grey arc for listtile 3 in recent updates
    canvas.drawArc(new Rect.fromLTWH(13, 260, 54, 54), 3.85, 1.1, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    throw UnimplementedError();
  }
}
