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

          SizedBox(height: 60.0),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Row(children: <Widget>[
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/beautysalon.png'),
                  ),
                  onPressed: (){
                    _navigateToBS(context);
                  },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                splashRadius: 80,
                iconSize: 70,
                icon: Ink.image(
                  image: AssetImage('assets/it.png'),
                ),
                onPressed: (){
                },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/homeclean.png'),
                  ),
                  onPressed: (){
                  },
                ),
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
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/electrician.png'),
                  ),
                  onPressed: (){
                  },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/plumber.png'),
                  ),
                  onPressed: (){
                  },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/carpenter.png'),
                  ),
                  onPressed: (){
                  },
                ),
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
              SizedBox(width: 65.0),
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

          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 0.0),
            child: Row(children: <Widget>[
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/tvr.png'),
                  ),
                  onPressed: (){
                  },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/ac.png'),
                  ),
                  onPressed: (){
                  },
                ),
              ),
              SizedBox(width: 40.0),
              Ink(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  color: Colors.blueGrey,
                ),
                child: IconButton(
                  splashRadius: 80,
                  iconSize: 70,
                  icon: Ink.image(
                    image: AssetImage('assets/fridge.png'),
                  ),
                  onPressed: (){
                  },
                ),
              ),
            ],
            ),
          ), // 3rd row of services

          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 0.5, 0.0, 0.0),
            child: Row(children: <Widget>[
              SizedBox(width: 10.0),
              Text(
                'TV Repair',
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
              SizedBox(width: 55.0),
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

void _navigateToBS(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BeautySalon()));
}
class BeautySalon extends StatelessWidget {
  const BeautySalon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Beauty Salon'),
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

      body: Container(
        padding: EdgeInsets.fromLTRB(5.0, 10.0, 0.0, 0.0),
        child: Column(children: <Widget>[
        Container(
        padding: EdgeInsets.fromLTRB(9.0, 40.0, 0.0, 0.0),
        width: 400.0,
        height: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://img.freepik.com/free-psd/top-view-beauty-salon-concept_23-2148600664.jpg?w=2000"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: <Widget>[

          SizedBox(height: 10.0),
        ],),
      ),
    ],
    ),
    ),
    );
  }
}
