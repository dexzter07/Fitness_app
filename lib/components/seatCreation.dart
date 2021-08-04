import 'package:flutter/material.dart';

class SeatCreation extends StatefulWidget {
  @override
  _SeatCreationState createState() => _SeatCreationState();
}

class _SeatCreationState extends State<SeatCreation> {
  final List = [];
  bool booked = true;
  int seats;
  bool onPressed = false;
  int seats1;
  bool onPressed1 = false;
  int seats2;
  bool onPressed2 = false;
  int seats3;
  bool onPressed3 = false;
  int seats4;
  bool onPressed4 = false;
  int seats5;
  bool onPressed5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assign Seats", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: (onPressed1 ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed1) {
                            List.remove(seats1);
                            onPressed1 = false;
                          } else {
                            seats1 = 2;
                            List.add(seats1);
                            onPressed1 = true;
                          }
                        });
                      }),
                  SizedBox(width: 40,),
                  IconButton(icon: (onPressed2 ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed2) {
                            List.remove(seats2);
                            onPressed2 = false;
                          } else {
                            seats2 = 3;
                            List.add(seats2);
                            onPressed2 = true;
                          }
                        });
                      }),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: (onPressed3 ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed3) {
                            List.remove(seats3);
                            onPressed3 = false;
                          } else {
                            seats3 = 4;
                            List.add(seats3);
                            onPressed3 = true;
                          }
                        });
                      }),
                  SizedBox(width: 40,),
                  IconButton(icon: (onPressed4 ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed4) {
                            List.remove(seats2);
                            onPressed4 = false;
                          } else {
                            seats4 = 5;
                            List.add(seats4);
                            onPressed4 = true;
                          }
                        });
                      }),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: (onPressed5 ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed5) {
                            List.remove(seats5);
                            onPressed5 = false;
                          } else {
                            seats5 = 6;
                            List.add(seats5);
                            onPressed5 = true;
                          }
                        });
                      }),
                  SizedBox(width: 40,),
                  IconButton(icon: (onPressed ? Icon(Icons.event_seat_sharp, color: Colors.green, size: 55,) : Icon(Icons.event_seat_sharp,color: Colors.grey,size: 55,)) ,
                      onPressed: (){
                        setState(() {
                          if (onPressed) {
                            List.remove(seats);
                            onPressed = false;
                          } else {
                            seats = 7;
                            List.add(seats);
                            onPressed = true;
                          }
                        });
                      }),

                ],
              ),

            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
          Center(
            child: SizedBox(
              width: 306,
              height: 50,
              child: FlatButton(
                color: Color.fromRGBO(59, 59, 59, 1),
                child: Text("Assign", style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(21)),
                onPressed: (){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
