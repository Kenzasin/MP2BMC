import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "hello BMC flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("HELLO BMC FLUTTER"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Builder(builder: (context) =>Center(
                child: Column(children: [
              Text(
                'Hello Flutter',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800]),
              ),
              Text(
                'Discover the flutter',
                style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
              ),
              Image.network(
                'https://th.bing.com/th/id/OIP.nOIN9sTJqEWklvgYq7XhTgHaEK?w=307&h=180&c=7&r=0&o=5&pid=1.7',
                height: 550,

              ),
              ElevatedButton(
                child: Text('Contact Us'),
                onPressed: () => contactUs(context),
              )
            ])))));
  }
} // end line

void contactUs(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us!'),
          content: Text('mail us at grc@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )//textbutton
          ],//actions
        );//return
      }//builder
      );//showdialog
}// void contactus
