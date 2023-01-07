import 'package:flutter/material.dart';
import 'package:servemandu/screens/homeserv.dart';
import 'package:servemandu/screens/it.dart';
import 'appliance.dart';
import 'beautysalon.dart';
import 'bookings.dart';
import 'homeclean.dart';

class HomePage extends StatelessWidget {

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
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/Logo.png"),
                      radius: 40.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("ServeMandu",
                    style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ),
                ],
              ),

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
                _navigateToBookings(context);
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
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(9.0, 40.0, 0.0, 0.0),
              width: 400.0,
              height: 250.0,
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

            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0.0, 10.0, 20.0),
              child: Row(children: <Widget>[

                //Beauty Salon
                SizedBox(width: 30.0),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    splashRadius: 80,
                    iconSize: 90,
                    icon: Ink.image(
                      image: AssetImage('assets/beautysalon.png'),
                      fit: BoxFit.cover,
                    ),
                    onPressed: (){
                      _navigateToBS(context);
                    },
                  ),
                ),

                //IT Repair
                SizedBox(width: 60.0),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    splashRadius: 80,
                    iconSize: 90,
                    icon: Ink.image(
                      image: AssetImage('assets/it.png'),
                    ),
                    onPressed: (){
                      _navigateToIT(context);
                    },
                  ),
                ),

              ],
              ),
            ), // 1st row of services

            SizedBox(height: 0.0),
            Padding(
              padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0),
              child: Row(children: <Widget>[
                Text(
                  'Beauty Salon',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
                SizedBox(width: 90.0),
                Text(
                  'IT Support',
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

                //Electrician
                SizedBox(width: 30.0),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    splashRadius: 80,
                    iconSize: 90,
                    icon: Ink.image(
                      image: AssetImage('assets/electrician.png'),
                    ),
                    onPressed: (){
                      _navigateToHomeServ(context);
                    },
                  ),
                ),

                //Home Cleaning
                SizedBox(width: 60.0),
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    splashRadius: 80,
                    iconSize: 90,
                    icon: Ink.image(
                      image: AssetImage('assets/homeclean.png'),
                    ),
                    onPressed: (){
                      _navigateToHomeClean(context);
                    },
                  ),
                ),

              ],
              ),
            ), // 2nd row of services

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.fromLTRB(60.0, 0.5, 0.0, 0.0),
              child: Row(children: <Widget>[
                SizedBox(width: 20.0),
                Text(
                  'Home Services',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),

                SizedBox(width: 80.0),
                Text(
                  'Home Cleaning',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ],),
            ), // name of 2nd row of services

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.fromLTRB(150.0, 20.0, 0.0, 0.0),
              child: Row(children: <Widget>[

                //TV Repair
                Ink(
                  decoration: ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    splashRadius: 80,
                    iconSize: 90,
                    icon: Ink.image(
                      image: AssetImage('assets/tvr.png'),
                    ),
                    onPressed: (){
                      _navigateToAppliances(context);
                    },
                  ),
                ),
                SizedBox(width: 40.0),

              ],
              ),
            ), // 3rd row of services

            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 0.5, 0.0, 0.0),
              child: Row(children: <Widget>[
                SizedBox(width: 125.0),
                Text(
                  'Appliances',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
                SizedBox(width: 65.0),

              ],),
            ), // name of 3rd row of services

          ], ),
        ),
      ), );
  }
}

void _navigateToBS(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => BeautySalon()));
}

void _navigateToBookings(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Bookings()));
}

void _navigateToIT(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => IT_Support()));
}

void _navigateToHomeServ(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Home_Services()));
}

void _navigateToHomeClean(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Home_Clean()));
}

void _navigateToAppliances(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Appliance()));
}
