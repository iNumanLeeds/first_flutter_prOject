import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: MyCard(),
    ));

/*
* Action menu's are really helping materials in flutter
* */
class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  int developmentLevel = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Hell Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { // it'll change the state now
            developmentLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/thumb.jpg"),
                radius: 40.0,
              ),
            ),
            Divider(height: 90.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Text(
              "Hell Boy",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "CURRENT DEVELOPMENT LEVEL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Text(
              '$developmentLevel',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "EMAIL",
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Row(
              children: [
                Icon(Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0,),
                Text(
                  'i_numn@yahoo.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


