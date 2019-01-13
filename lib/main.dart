import 'package:flutter/material.dart';
void main()
{
runApp(new MaterialApp(
   home: new MyApp(),
  debugShowCheckedModeBanner: false,

));
}
class MyApp extends StatefulWidget{
@override
   _State createState()=> new _State();

}
class _State extends State<MyApp>{
  @override
   Widget build (BuildContext context){
     return new Scaffold(
        appBar : new AppBar(
          elevation: 0.5,
          backgroundColor: Colors.amber,
          title: new Text("FLYING BIRDS"),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white,),
                onPressed: () {})
          ],
        ),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             //header
             new UserAccountsDrawerHeader(accountName: Text('USER'),
               accountEmail: Text('test@flyingbirds.com'),
               currentAccountPicture: GestureDetector(
                 child: new CircleAvatar(
                   backgroundColor: Colors.grey,
                   child: Icon(Icons.person, color: Colors.white,),
                 ),
               ),
               decoration: new BoxDecoration(
                   color: Colors.amber
               ),
             ),
//              Body
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Home'),
                 leading: Icon(Icons.home,color: Colors.black,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('My Account'),
                 leading: Icon(Icons.person,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('My Orders'),
                 leading: Icon(Icons.shopping_basket,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Categories'),
                 leading: Icon(Icons.dashboard,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Favourite'),
                 leading: Icon(Icons.favorite,color: Colors.red,),
               ),
             ),
             Divider(),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Settings'),
                 leading: Icon(Icons.settings,color: Colors.blue,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('About'),
                 leading: Icon(Icons.help, color: Colors.green,),
               ),
             ),
           ],
         ),
       ),
       body: new Container(
           padding: new EdgeInsets.all(32.0),
           child: new Center(
              child: new Column(
                 children: <Widget>[
                    new Text('Hello World')
                 ],
              ),
           ),
        ),
     );
  }
}
