
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Order History", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
            child:Material(

              borderRadius: BorderRadius.circular(5),
              child: TextFormField(
                validator: (value){
                  if (value.isEmpty){
                    return 'Please enter the number';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                obscureText: false,
                onChanged: (val) {

                },
                style: TextStyle(
                  height: 1,

                ),


                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(224, 224, 224, 1),
                  enabledBorder: OutlineInputBorder(

                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color.fromRGBO(224, 224, 224, 1))

                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color.fromRGBO(224, 224, 224, 1))
                  ),

                  prefixIcon: Icon(Icons.search, color: Colors.black,),


                  hintText: "Search",

                  hintStyle: TextStyle(

                    color: Colors.black54,
                    fontFamily:'Poppins',

                  ),





                ),


              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text("Ticket",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 271,
              width: 326,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/eclipse.png"),

                          radius: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Marina Parker", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                              Text("10 min ago", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Text("#125103", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),),
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
                    child: Text("Ticket details", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,0, 0,10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Text("2", style: TextStyle(fontSize: 29, fontWeight: FontWeight.w700)),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("VIP Ticket", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                            Text("4:30 PM unitl 6:30 PM", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("5 March", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 110),
                          child: Text("\$160", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromRGBO(156, 10, 93, 1))),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 0, 0),
                    child: Text("Event details", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Row(
                      children: [
                        Container(
                            width:58,
                            height: 68,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),

                            child: Image.asset("images/Rectangle.png", fit: BoxFit.fitHeight)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Yoga Classes", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Sun, Jan 25 - 4:30 PM Set", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text("Tobacco Dock, London...", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400)),
                                ],
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
