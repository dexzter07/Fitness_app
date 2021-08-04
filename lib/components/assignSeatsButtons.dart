import 'package:dance_id_user/components/seatCreation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignSeatsButtons extends StatefulWidget {
  @override
  _AssignSeatsButtonsState createState() => _AssignSeatsButtonsState();
}

class _AssignSeatsButtonsState extends State<AssignSeatsButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Select Group of Seats", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
        ),

      body: Column(
        children: [

          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [

                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SeatCreation()));
                    },
                    child: Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                            child: Text("6", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                  ),SizedBox(height: 15,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                            child: Text("10", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(width: 10,),
              Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                            child: Text("15", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                            child: Text("20", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Seats", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ],
      )
    );
  }
}
