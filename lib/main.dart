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
        actions: <Widget>[
          IconButton(onPressed: () {},
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
              )),
        ],
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
                Icons.location_on_sharp,
              ),
              title: const Text('Location'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.app_registration_rounded,
              ),
              title: const Text('Bookings'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
              ),
              title: const Text('Login/Register'),
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
                Icons.account_circle_outlined,
              ),
              title: const Text('Your Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.contact_support_outlined,
              ),
              title: const Text('Contact Us'),
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
        ), // background image

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
                  backgroundImage: AssetImage('assets/it.png'),
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
          ), // 1st row of services

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
                'IT Support',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 30.0),
              Text(
                'Home Cleaning',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 40.0),
            ],),
          ), // name of 1st row of services

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
                backgroundImage: AssetImage('assets/carpenter.png'),
                radius: 40.0,
                backgroundColor: Colors.blueGrey,
              ),
            ],
            ),
          ), // 2nd row of services

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
              SizedBox(width: 60.0),
              Text(
                'Plumber',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 60.0),
              Text(
                'Carpenter',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
            ],),
          ), // name of 2nd row of services

          SizedBox(width: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 30.0, 0.0, 0.0),
            child: Row(children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('assets/tv (1).png'),
                radius: 40.0,
                backgroundColor: Colors.blueGrey,
              ),
              SizedBox(width: 40.0),
              CircleAvatar(
                backgroundImage: AssetImage('assets/ac.png'),
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
          ), // 3rd row of services

          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0.5, 0.0, 0.0),
            child: Row(children: <Widget>[
              Text(
                'TV Repair',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 60.0),
              Text(
                'AC Repair',
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
          ), // name of 3rd row of services

        ], ),
      ), );
  }
}
