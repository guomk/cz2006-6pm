import 'package:flutter/material.dart';

class SessionInfo extends StatefulWidget {
  @override
  SessionInfoState createState() => new SessionInfoState();
}

class SessionInfoState extends State<SessionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(70, 100, 0, 0),
              child: Row(
                children: <Widget>[
                  new Icon(Icons.person, color: Colors.black, size: 100),
                  // SizedBox(width : 50),
                  new Icon(Icons.link, color: Colors.black, size: 80),
                  new Icon(Icons.help, color: Colors.black, size: 100),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Waiting for someone to join...',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height:30),

                ],),
                

              ),
              SizedBox(height: 100),
                  SizedBox(height: 30),
                  Card(
                    color: Colors.white,

                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          Text(
                            'Time:         ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Gym:      ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Focus:       ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Level of experience:   ',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.blueAccent,
                      color: Colors.blue,
                      elevation: 7.0,
                      child: InkWell(
                        onTap: () {
                          print('[Join Session] Pressed');
                          Navigator.popUntil(context, ModalRoute.withName('/homepage'));
                        },
                        child: Center(
                          child: Text(
                            'Join Session',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.grey,
                      color: Colors.white,
                      elevation: 7.0,
                      child: InkWell(
                        onTap: () {
                          print('[Cancel] Pressed');
                          Navigator.of(context).pop();
                        },
                        child: Center(
                          child: Text(
                            'CANCEL SESSION',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        );
}}
