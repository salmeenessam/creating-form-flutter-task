import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'text',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState ();

}

class _MyFormState extends State<MyForm> {
  String _myText= '';
  
 
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onChanged: (text){
               _myText= text;
              
              },
              
              ),
            
            Container(
              alignment: Alignment.topRight,
              child: FlatButton(
              
               onPressed: () {
                setState(() {
                 print('$_myText');
               });
            },
              child: Text('tap!'),
            ),
            ),
           Text(_myText),  
          ],
        ), 
        ),
        );
  }
}


  