import 'package:flutter/material.dart';

void main() => runApp(SumaApp());

class SumaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Suma2(),
    );
  }
}

class Suma2 extends StatefulWidget {
  @override
  _Suma2State createState() => _Suma2State();
}

class _Suma2State extends State<Suma2> {
  TextEditingController _numero1;
  TextEditingController _numero2;
    int n1=0;
    int n2=0;
  @override
  void initState() {
    _numero1 = TextEditingController();
    _numero2 = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _numero1,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Numero 1',
              ),
            ),
            TextField(
              controller: _numero2,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Numero 2',
              ),
            ),
            RaisedButton(
              child: Text('Suma'),
              onPressed: () {
                
                _suma(context, _numero1.text, _numero2.text);
              },
            )
          ],
        ),
      ),
    );
  }

   _suma(BuildContext context, String numero1, String numero2) {
    int resultado= int.parse(numero1) + int.parse(numero2);
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Suma'),
              
              content: Text('La Suma es:, $resultado'),
            ));
  }

  int v1(String numero1) {
    int v11=  int.parse(numero1);
    return v11;

  }

  int v2( String numero2) {
    return int.parse(numero2);
  }
}