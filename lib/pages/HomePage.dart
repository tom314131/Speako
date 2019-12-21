import 'package:flutter/material.dart';
import 'package:speako/Utils/SpeakoColors.dart';
import 'package:speako/tests/CardsToTest.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CardsToTest c1 = CardsToTest("https://scontent.fhfa1-1.fna.fbcdn.net/v/t1.0-9/s960x960/32240343_10209131484002824_2528688976504553472_o.jpg?_nc_cat=111&_nc_ohc=bKAGV_aY1V4AQmK1v7yJBtzP15VXU4BYS7IoweW3ftEFDxs0ibLMlARMw&_nc_ht=scontent.fhfa1-1.fna&oh=d58e8a1b95b7ed8d9cd8b6e70b2f4400&oe=5E747D78",
      "King Tom");
  CardsToTest c2 = CardsToTest("https://scontent.fhfa1-2.fna.fbcdn.net/v/t1.0-9/41305902_10217557262353050_1782717448554807296_n.jpg?_nc_cat=104&_nc_ohc=NIk1jNxeQTEAQltX0PJKTGRvUvafLqD97coHhIBGC4GPJJp8Un3pePrtQ&_nc_ht=scontent.fhfa1-2.fna&oh=9510e80e7f2b25986e5b76d3dba9e4c6&oe=5E737EF0",
      "Afik Ba'aron");
  CardsToTest c3 = CardsToTest("https://scontent.fhfa1-1.fna.fbcdn.net/v/t1.0-9/13533260_1340558835958547_4551795649986858391_n.jpg?_nc_cat=103&_nc_ohc=zFTcYIR1P5oAQnJu15_m4LpFWOo35qQrTvsd8BR86Sd82VLLrOYasLPtQ&_nc_ht=scontent.fhfa1-1.fna&oh=9aa8d7d6b61cd905d1fe36ca8e5d243c&oe=5E7C2B13",
      "Noa Gol");
  CardsToTest c4 = CardsToTest("https://scontent.fhfa1-1.fna.fbcdn.net/v/t1.0-9/p720x720/71792947_2695312383820870_5367185192588935168_o.jpg?_nc_cat=106&_nc_ohc=yTBJhPb9TwMAQkRyANkne0NAu2tJl4L84F9zqcjaZoQNIznmxhhcWfzFg&_nc_ht=scontent.fhfa1-1.fna&oh=0b12add436df06c7f02512ce6f27b0e9&oe=5E6DBBE1",
      "Fat Boy");
  CardsToTest c5 = CardsToTest("https://scontent.fhfa1-2.fna.fbcdn.net/v/t31.0-8/p960x960/18766571_1473183036094902_8868175892874346958_o.jpg?_nc_cat=101&_nc_ohc=vRalisVfRPMAQlmCjM_MHzR8CaJDkGJQTyA5V8L4GfoSgOJxKHeucXIxA&_nc_ht=scontent.fhfa1-2.fna&oh=beaedca3c86d344021aa5f73fa2b7900&oe=5E76557A",
      "Elad Bitton");

  SpeakoColors speakoColors = new SpeakoColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: speakoColors.GetMenuColor(),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('Tom Menashe'), accountEmail: Text('tom314131@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://scontent.fhfa1-1.fna.fbcdn.net/v/t1.0-9/s960x960/32240343_10209131484002824_2528688976504553472_o.jpg?_nc_cat=111&_nc_ohc=bKAGV_aY1V4AQmK1v7yJBtzP15VXU4BYS7IoweW3ftEFDxs0ibLMlARMw&_nc_ht=scontent.fhfa1-1.fna&oh=d58e8a1b95b7ed8d9cd8b6e70b2f4400&oe=5E747D78'),
              ),
              decoration: BoxDecoration(
                  color: speakoColors.GetMenuColor()
              ),
            ),
            Container(
              child: ListTile(
                title: Text('Login / Signup'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: speakoColors.GetLogoutColor()
                ),
              child: ListTile(
                title: Text('Logout'),
                onTap: () {print('tapped');},
              )
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0,30.0,0,0),
            child: Text("Celebs",
              style: new TextStyle(
                fontSize: 20.0,
                color: Colors.grey[600],
              )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            height: 220.0,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                c1.GetCard(),
                c2.GetCard(),
                c3.GetCard(),
                c4.GetCard(),
                c5.GetCard(),
                c1.GetCard(),
                c2.GetCard(),
                c3.GetCard(),
              ],
            ),
          ),
          Container(
            child: Text("My Records",
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[600],
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.0),
            height: 220.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                c4.GetCard(),
                c5.GetCard(),
                c1.GetCard(),
                c2.GetCard(),
                c3.GetCard(),
                c4.GetCard(),
                c5.GetCard(),
                c1.GetCard(),
                c2.GetCard(),
                c3.GetCard(),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: (){
            Navigator.pushNamed(context, '/insertTextPage');
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
            backgroundColor: speakoColors.GetMenuColor(),
          ),
        ],
      ),
    );
  }
}
