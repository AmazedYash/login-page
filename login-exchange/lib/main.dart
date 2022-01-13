
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: <String, WidgetBuilder>{
      //   '/Signup':(BuildContext context) => new SignupPage()
      // },
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   backgroundColor: Colors.green,
        //   child: const Icon(Icons.arrow_right,
        //     size: 30,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 110, 0, 0),
                    child: Text('WELCOME TO',
                      style: TextStyle(
                        fontFamily: 'Game',
                        color: Colors.blueAccent,
                        letterSpacing: 2.0,
                        fontSize: 40.0,fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,

                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 160, 0, 0),
                    child: Text('E-XCHANGE',
                      style: TextStyle(
                        fontFamily: 'Game',
                        color: Colors.greenAccent,
                        letterSpacing: 2.0,
                        fontSize: 40.0,fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                  
              ],),
            ),
            Container(
              padding: EdgeInsets.only(left:20, top:85, right:20),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ) 
                    ),
                  ),
                  SizedBox(height:14),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      )
                    ),
                    obscureText: true,
                  ),
                  Container(
                    alignment: Alignment(1,0),
                    padding: EdgeInsets.only(top:20.0),
                    child: InkWell(
                      child: Text('Forgort Password',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 0),
                        Text('SIGN IN',
                          style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontFamily: 'Game',
                          letterSpacing: 2.0,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 195),
                        Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.greenAccent,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.blueAccent,
                            ),
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            
            Padding(
              padding: const EdgeInsets.fromLTRB(30,100,0,0),
              child: Text(
                'New to E-xchange ?',
                style: TextStyle(
                  fontFamily: 'Game',
                  color: Colors.redAccent,
                  letterSpacing: 2.0,

                ),
              ),
            ),
            SizedBox(width: 0.0),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontFamily: 'Game',
                      color: Colors.greenAccent,
                      letterSpacing: 2.0,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ),
            )
          ],)
      ),
    );
  }
}


