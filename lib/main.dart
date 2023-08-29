import 'package:flutter/material.dart';

void main() {
  runApp(const Screen());
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Icon(
                    Icons.circle_notifications_rounded,
                    size: 40,
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 40,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 260),
                child: Text(
                  "Anusha",
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              
              Card(
                margin: EdgeInsets.symmetric(vertical: 25, horizontal: 4),
                child: ListTile(
                  leading: Text(
                    "680MB/1024MB\nAvailable Storage",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  title: Icon(
                    Icons.arrow_circle_up_rounded,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Files",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color:Colors.grey,fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class Screen2 extends StatelessWidget {
   Screen2({super.key});
  List<String> images=[
    "assets/document.jpeg",
    "assets/image1.jpeg",
    "assets/video.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for(int i=0;i<3;i++)
        Column(
          children: [
            Image.asset(images[i]),
          ],
        )
      ],
    );
  }
}
class SongsUI extends StatelessWidget {
   SongsUI({super.key});
  List<String> images=[
    "assets/document.jpeg",
    "assets/image1.jpeg",
    "assets/video.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
     return Row(
      children: [
        for(int i=0;i<3;i++)
        Image.asset(images[i]),
        ListTile(
          title: Text("The Science of Black",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
          ),
          subtitle: Text("630KB",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),),
        ),
        Icon(Icons.more_vert_rounded),
      ],
    );
  }
}
