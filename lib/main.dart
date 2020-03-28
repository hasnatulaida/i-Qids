import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Menu(),
    );
  }
}

class Menu extends StatelessWidget {
void _doNothing(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.cover,
              ),
              ),
              child: Image(
                 alignment: Alignment.center,
                  fit:  BoxFit.contain,
                  image: AssetImage('assets/main.gif'),
              ),
                ),
                  ListTitle(Icons.person,'Profile', _doNothing ),
                  ListTitle(Icons.notifications,'Notification', _doNothing ),
                  ListTitle(Icons.settings,'Setting', _doNothing ),
            ],
          ),
        ),  
      appBar: AppBar(   
        leading: IconButton(icon: Icon(Icons.settings), onPressed: _doNothing),   
        title: Text('Welcome Corona!'),      
        backgroundColor: Colors.brown[100],
        actions: <Widget> [          
          // Material(            
          //   child: InkWell(
          //     onTap: _doNothing,              
          //     child:  Image(
          //         alignment: Alignment.topRight,
          //         fit:  BoxFit.contain,
          //         image: AssetImage('assets/logout.png'),
                  
          // ),
          //   )
          // ),  
        ]
        ), 
        body: Container(
        padding: const EdgeInsets.all(10.0),
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
        ),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Score: 0", style: TextStyle(fontSize: 20, color: Colors.white)),
              Image.asset(
                'assets/main.gif',
                height: 190,
              ),
          // Container(
          //   height: 170.0,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage('assets/main.gif'))
          //  ),
          // ),
          // Image(image: AssetImage("assets/ajax-main.gif")),
      SizedBox(height: 20.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blue[300],
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Body Part", style: TextStyle(fontSize: 25)),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.purple[200],
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Animal", style: TextStyle(fontSize: 25)),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.lightGreen[200],
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Color", style: TextStyle(fontSize: 25)),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.redAccent[100],
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Sport", style: TextStyle(fontSize: 25)),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                  ),
                ),
            ],),
        ),
    );
  }
}

class ListTitle extends StatelessWidget {

  IconData icon;
  String text;
  Function onTap;

  ListTitle(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
        ),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          onTap: onTap,
          child: Container(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        text, 
                        style: TextStyle(
                          fontSize: 20.0,
                      ),)
                      )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

