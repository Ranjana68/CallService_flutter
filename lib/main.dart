import 'package:flutter/material.dart';
import 'package:call_number/call_number.dart';


void main(){
  runApp(MyApp());
}

class MyApp  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePage ();
  }
}

class _MyHomePage extends State<MyApp>{

  final no= TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'OneTapLifeline',
        home: Scaffold(
        appBar: AppBar(title: Text('LifeLine'),),
    body: Column(
        children: [
          TextField(
            controller: no ,
            keyboardType: TextInputType.number,

            decoration: InputDecoration(
              labelText: 'Enter the number',
            ),
          ),

          RaisedButton(
            onPressed: (){
              //String number=no as String;
              //launch("tel:6280020115");
              CallNumber().callNumber(no.text);

            },
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                  'CALL',
                  style: TextStyle(fontSize: 20,color: Colors.white)
              ),
            ),

          ),

        ]

    )
    ),
    );
  }
}