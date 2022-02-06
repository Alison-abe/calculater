import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black), home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  double x=0.0, y=0.0;
  var operator;
  var seta = '';
  var setb = '';
  int weight = 0;

  String etext = '';
  void operation(String a, String b, double c) {
    etext = a + b;
    if (count == 0) {
      if (weight == 0) {
        x = 0;
      }
      x = c + x * (pow(10, weight));
    } else {
      if (weight == 0) {
        y = 0;
      }
      y = c + y * (pow(10, weight));
    }
    weight=weight=1;
  }

  void operatione(String p, String q,) {
    etext = p + q;
    if (count != 0) {
       perform(x, y, operator);
      //count=count-1;
      etext = x.toString() + q;
      operator = q;
      weight = 0;
    } else {
      operator = q;
      count = count + 1;
      weight = 0;
    }
  }

  void perform(var A, var B, var C) {
    
    switch (C) {
      case '+':
          x= A + B;
          break;
      case '-':
        x= A - B;
         break;
      case '*':
        x= A * B;
        break;
      case '/':
        x=(A ) / B;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    etext,
                    style: TextStyle(color: Colors.white, fontSize: 38),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '7', 7.0);
                          });
                        },
                        child: Text('7'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '8', 8.0);
                          });
                        },
                        child: Text('8'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '9', 9.0);
                          });
                        },
                        child: Text('9'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operatione(etext, '*');
                          });
                        },
                        child: Text('*'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '4', 4);
                          });
                        },
                        child: Text('4'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '5', 5);
                          });
                        },
                        child: Text('5'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '6', 6);
                          });
                        },
                        child: Text('6'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operatione(etext, '-');
                          });
                        },
                        child: Text('-'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '1', 1);
                          });
                        },
                        child: Text('1'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '2', 2);
                          });
                        },
                        child: Text('2'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '3', 3);
                          });
                        },
                        child: Text('3'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operatione(etext, '+');
                          });
                        },
                        child: Text('+'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operation(etext, '0', 0);
                          });
                        },
                        child: Text('0'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            etext = '';
                            count = 0;
                            weight = 0;
                          });
                        },
                        child: Text('C'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            perform(x, y, operator);
                            count = count - 1;
                            etext = x.toString();
                            weight = 0;
                          });
                        },
                        child: Text('='),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            operatione(etext, '/');
                          });
                        },
                        child: Text('/'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(29),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
