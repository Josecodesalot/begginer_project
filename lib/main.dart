import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
     appBar: AppBar(
       actions: <Widget>[
         Icon(Icons.notifications),
         Icon(Icons.add_circle_outline)
       ],
       title: Text("Patient Details"),),
      
      body: Column(
        children: <Widget>[
          TopPart(),
          TabViewThing(),
          ListOfPrescriptions(),
        ],
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String url = "http://www.clipartroo.com/images/89/business-person-clipart-89724.png";
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,

      child: Row(
        children: <Widget>[

          Container(
              width: h/8,
              height: h/8,
              margin: EdgeInsets.all(20),
              decoration:  BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black12
                )],
                  shape: BoxShape.circle,
                  image:  DecorationImage(
                      fit: BoxFit.cover,
                      image:  NetworkImage(
                          url)
                  )
              )),

          Container(
            width: w/2,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(bottom: 16.00),
                  child: Text("Ram Shay", style: TextStyle(
                    fontSize: 16.00,
                    fontWeight: FontWeight.bold,
                  ),),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Date of birth", style: TextStyle(
                    color: Colors.grey
                  ),),
                  Text("Mobile Number", style:  TextStyle(
                      color: Colors.grey
                  ),),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("sept 9, 1997"),
                  Text("12341234245"),

                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}


class TabViewThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: h/10,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.00, vertical: 8),
                child: Text("Title", style: TextStyle(
                  fontSize: 16,
                ),),),

              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
                ),
              )
            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.00, vertical: 8),
            child: Text("Title", style: TextStyle(
              fontSize: 16,
            ),),),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.00, vertical: 8),
            child: Text("Title", style: TextStyle(
              fontSize: 16,
            ),),),


          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.00, vertical: 8),
            child: Text("Title", style: TextStyle(
              fontSize: 16,
            ),),),



        ],

      ),
    );
  }
}

class ListOfPrescriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[

          Bill(),

          Bill(),


        ],
      ),
    );
  }
}


class Bill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Material(
                    elevation: 2,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Text("Dr Signh", style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Tab"),
                            Text("500g"),

                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(
                                  Icons.check_box,
                                  color: Colors.blue,
                                ),

                                Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                )
                              ],
                            )
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


