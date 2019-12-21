import 'package:flutter/material.dart';

class AddVoicePage extends StatefulWidget {
  @override
  _AddVoicePageState createState() => _AddVoicePageState();
}

class _AddVoicePageState extends State<AddVoicePage> {
  double sizeCard = 150.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Add a voice'),
        centerTitle: true,
      ),
      body:
        Column(
          children: <Widget>[
            Container(
              child: Text('Please speak loudly for about 30 seconds'),
              margin: EdgeInsets.all(20.0),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {},
                    heroTag: "startRecordBtn",
                    child: Icon(Icons.record_voice_over),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    heroTag: "stopRecordBtn",
                    child: Icon(Icons.stop),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Set a name for record voice'
                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () {},
                      heroTag: "addEntityPhotoBtn",
                      child: Icon(Icons.attach_file),
                    ),
                    Text('Add a photo (Optional)'),
                  ]
              ),
            ),
            Container(
                width: sizeCard,
                child: Card(
                  child: InkWell(
                    child: Wrap(
                      children: <Widget>[
                        Image.network('https://pngimage.net/wp-content/uploads/2018/06/logo-contact-person-png.png',
                          height: sizeCard,
                          width: sizeCard,
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child:
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FloatingActionButton.extended(
                      onPressed: (){},
                      icon: Icon(Icons.create),
                      heroTag: "createEntitiyBtn",
                      label: Text('Create'),
                    ),
                  ]
              ),
            ),
          ],
        )
    );
  }
}
