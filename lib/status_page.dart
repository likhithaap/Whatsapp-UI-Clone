import 'package:flutter/material.dart';

class status_page extends StatelessWidget {
  const status_page({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( children:[
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
                                child:
                                    Image.network('https://i.pravatar.cc/200'),
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
                        radius: 27,
                        backgroundColor: Color(0xff085E55),
                        child: CircleAvatar(
                        radius: 24.0,
                        child: ClipRRect(
                          child: Image.network('https://i.pravatar.cc/300'),
                          borderRadius: BorderRadius.circular(50.0),
                        ),)
                      ),
                      
                    )
                  ],
                ))
    ]
    );
  }
}
class statusring extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    throw UnimplementedError();
  }

}