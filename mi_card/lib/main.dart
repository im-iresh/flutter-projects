import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: 80,
              // ),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/iresh.jpg'),
              ),
              const Text(
                'Iresh Agrawal',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DancingScript'
                ),
              ),
              Text(
                  'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Colors.teal[200],
                  fontSize: 17,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
                width: 300,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 23,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        '+91 879 161 6879',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 23,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'iresh061@gmail.com',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ListTile(
                      leading: Icon(
                        Icons.code,
                        size: 26,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'leetcode.com/iresh061/',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    )
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: ListTile(
                      leading: Icon(
                        Icons.source,
                        size: 26,
                        color: Colors.teal[900],
                      ),
                      title: Text(
                        'github.com/im-iresh/',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//
// Card(
// color: Colors.white,
// margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
// child: Padding(
// padding: const EdgeInsets.all(6),
// child: ListTile(
// leading: Icon(
// Icons.email,
// size: 23,
// color: Colors.teal[900],
// ),
// title: Text(
// 'iresh061@gmail.com',
// style: TextStyle(
// fontSize: 22,
// color: Colors.teal[900],
// fontFamily: 'SourceSansPro',
// ),
// ),
// )
// ),
// ),