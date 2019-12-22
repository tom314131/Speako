import 'package:flutter/material.dart';
import 'package:speako/Utils/CreateLists.dart';
import 'package:speako/Utils/SpeakoColors.dart';
import 'package:speako/tests/CardsToTest.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  List<CardsToTest> celebList = new List<CardsToTest>();
  List<CardsToTest> localList = new List<CardsToTest>();

  SpeakoColors speakoColors = new SpeakoColors();
  CreateLists createLists = new CreateLists();



  @override
  Widget build(BuildContext context) {
    celebList = new List<CardsToTest>();
    localList = new List<CardsToTest>();
    createLists.CreateCelebs(celebList);
    createLists.CreateLocals(localList);
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

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: celebList.length,
              itemBuilder: (context, index)
              {
                return InkWell(onTap:() {
                  Navigator.pushNamed(context, '/insertTextPage');
                },
                child : celebList[index].GetCard());
              },
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

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: localList.length,
              itemBuilder: (context, index)
              {
                return InkWell(onTap:() {
                  Navigator.pushNamed(context, '/insertTextPage');
                },
                    child : localList[index].GetCard());
              },
            ),
          ),
          FloatingActionButton(
            onPressed: (){
            Navigator.pushNamed(context, '/addVoicePage');
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
