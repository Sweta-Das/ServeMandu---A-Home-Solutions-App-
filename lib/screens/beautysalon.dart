import 'package:flutter/material.dart';
import 'bookings.dart';

class BeautySalon extends StatelessWidget {

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
        padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              SizedBox(height:10),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Padding (padding: EdgeInsets.all(15),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context)=> PostScreen(),));
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("assets/image${index + 1}.png"),
                              fit: BoxFit.cover,
                              opacity: 0.8,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),

            ],),
        ),
      ),
    );
  }
}

class PostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://facesspa.com/wp-content/uploads/2020/07/AdobeStock_143330491.jpeg"),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Inpage(),
        ),
        bottomNavigationBar: AboutBooking1(),
     //   bottomNavigationBar:
      ),
    );
  }
}

class Inpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //Back button
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Icon(Icons.arrow_back, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutBooking1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height/2,
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFEDF2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView(children: [
        Padding(
          padding: EdgeInsets.only(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Facials",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Row(
                    children: [
                      Icon(Icons.star,
                          color: Colors.amber,
                          size: 25),
                      Text("4.5",
                        style: TextStyle(
                          //fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),//1st row for name & rate

                SizedBox(width: 10, height: 10),
                Row(
                  children: [
                    Text("Rs. 1800",
                    //textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),//2nd row for price

                SizedBox(width: 10, height: 30),
                Text(
                    "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                style: TextStyle(color: Colors.black54, fontSize: 18),
                textAlign: TextAlign.justify,
              ),//description of service

              SizedBox(width: 10, height: 50),
              ElevatedButton(
                   onPressed: (){Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Bookings()));},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    // color: Colors.blueGrey,
                    child: Text(
                      "Book Now"
                    ),
                  ),),
      ],
      ),
      ),
    ],
    ),);
  }
}
