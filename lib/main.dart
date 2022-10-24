import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoint = 0;
  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Points Counter'
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        '$teamAPoint',
                        style: TextStyle(
                          fontSize: 150.0,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamAPoint++;
                          });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamAPoint +=2;
                          });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamAPoint+=3;
                          });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                    ],
                  ),
                ),
                Container(
                  height: 500.0,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 60,
                    endIndent: 60,
                  ),
                ),
                Container(
                  height: 500.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 35.0,
                        ),
                      ),
                      Text(
                        '$teamBPoint',
                        style: TextStyle(
                          fontSize: 150.0,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamBPoint++;
                          });
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamBPoint+=2;
                          });
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150,50),
                        ),
                          onPressed: (){
                          setState(() {
                            teamBPoint+=3;
                          });
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                            ),
                          ),),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(150,50),
              ),
                onPressed: (){
                setState(() {
                  teamAPoint=0;
                  teamBPoint=0;
                });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}


