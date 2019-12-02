import 'package:flutter/material.dart';
import 'otherpage.dart';

void main(){
  runApp(new MaterialApp(home: new application(),));
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Test'),),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text('Teerapat'),
                accountEmail: new Text('toeynight@gmail.com'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black,child: new Text('M'),),
              decoration: new BoxDecoration(color: Colors.green),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('D'),),
                new CircleAvatar(backgroundColor: Colors.black26,child: new Text('A'),),
              ],

            ),
            new ListTile(title: new Text('Page1'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new op('Page 1'))),
            ),
            new ListTile(title: new Text('Page2'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new op('Page 2'))),
            ),
            new ListTile(title: new Text('close'),
              trailing: new Icon(Icons.arrow_forward),
              onTap: (){Navigator.pop(context);},
            ),
          ],
        ),
      ),
    );

  }
}



