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
  final myController = TextEditingController();
  
  @override

  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override

  void dispose() {
    myController.dispose();
    super.dispose();
  }

_printLatestValue () {
  print('${myController.text}');
}
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
                print('$text');
              },
              controller: myController,
            ),
            
            Container(
              alignment: Alignment.topRight,
              child: FlatButton(
              
            onPressed: () {
              setState(() {
               print(myController.text);
              });
            },
              child: Text('tap!'),
            ),
            ),
           Text(myController.text),  
          ],
        ), 
        ),
        );
  }
}