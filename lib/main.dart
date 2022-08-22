import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ServeMandu()));

class ServeMandu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text('ServeMandu'),
            ),
            ListTile(
                  leading: Icon(
                      Icons.home,
                  ),
                title: const Text('Home Page'),
                onTap: (){
                Navigator.pop(context);
                },
            ),
            ListTile(
              leading: Icon(
                Icons.app_registration,
              ),
              title: const Text('Registration'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
              ),
              title: const Text('Login Page'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payments_sharp,
              ),
              title: const Text('Payment'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_month,
              ),
              title: const Text('Date & Time'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: const Text('Settings'),
                  onTap: (){
                  Navigator.pop(context);
                  },
            ),
          ],
        ),
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(9.0, 40.0, 0.0, 0.0),
            width: 400.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://www.axisbank.com/images/default-source/revamp_new/loans/tablet/home-loan-tab.jpg?sfvrsn=c0c29955_2"),
                fit: BoxFit.cover,
              ),
            ),
           child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hi!',
                       style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'What Services',
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 25.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
               Align(
                 alignment: Alignment.centerLeft,
                 child: Text(
                   'do you require?',
                   style: TextStyle(
                     letterSpacing: 1.0,
                     fontSize: 25.0,
                     fontStyle: FontStyle.italic,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               ],),
        ),


          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 40.0, 0.0, 0.0),
            child: Row(children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/beautysalon.png'),
                  radius: 40.0,
                  backgroundColor: Colors.blueGrey,
                ),
                SizedBox(width: 40.0),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/carpenter.png'),
                  radius: 40.0,
                  backgroundColor: Colors.blueGrey,
                ),
                SizedBox(width: 40.0),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/fridge.png'),
                  radius: 40.0,
                  backgroundColor: Colors.blueGrey,
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0.5, 0.0, 0.0),
            child: Row(children: <Widget>[
              Text(
                'Beauty Salon',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 35.0),
              Text(
                'Carpenter',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 40.0),
              Text(
                'Fridge Repair',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 40.0),
            ],),
          ),

          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 10.0, 0.0, 0.0),
            child: Row(children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/electrician.png'),
                radius: 40.0,
                backgroundColor: Colors.blueGrey,
              ),
              SizedBox(width: 40.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/plumber.png'),
                radius: 40.0,
                backgroundColor: Colors.blueGrey,
              ),
              SizedBox(width: 40.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/homeclean.png'),
                radius: 40.0,
                backgroundColor: Colors.blueGrey,
              ),
            ],
            ),
          ),

          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0.5, 0.0, 0.0),
            child: Row(children: <Widget>[
              Text(
                'Electrician',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 55.0),
              Text(
                'Plumber',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 40.0),
              Text(
                'Home Cleaning',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 40.0),
            ],),
          ),
          SizedBox(height: 20.0),
             ], ),
      ), );
  }
}
