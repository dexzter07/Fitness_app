import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPageDashboard extends StatefulWidget {
  @override
  _MainPageDashboardState createState() => _MainPageDashboardState();
}

class _MainPageDashboardState extends State<MainPageDashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("My Events", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            elevation: 0,
            bottom: const TabBar(
              tabs: [
                Tab(child: Text("My Events", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700, color: Colors.black),),),
                Tab(child: Text("Active Classes", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: Colors.black),),),


              ],
            ),

          ),
          drawer:  new Drawer(
            child: new ListView(
              children: [
//            header
                new Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: new UserAccountsDrawerHeader(
                    decoration: BoxDecoration(

                        color: Colors.white38
                    ),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Manage Events'),
                    leading: Icon(Icons.person,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Manage Products'),
                    leading: Icon(Icons.shopping_cart,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Manage Offer & Deals'),
                    leading: Icon(Icons.category,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Manage Employee'),
                    leading: Icon(Icons.cached,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Schedule'),
                    leading: Icon(Icons.schedule,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                Divider(color: Colors.black,),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Change Language'),
                    leading: Icon(Icons.info,),
                    trailing: Icon(Icons.arrow_forward_ios,),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                Center(
                  child: SizedBox(
                    width: 149.28,
                    height: 48.65,
                    child: FlatButton(
                      color: Color.fromRGBO(69, 95, 170, 1),
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.white,),
                          SizedBox(width: 15,),
                          Text("Logout", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w500),),
                        ],
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Color.fromRGBO(69, 95, 170, 1),

                          width: 1,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(7)),
                      onPressed: (){

                      },
                    ),
                  ),
                ),//
              ],
            ),
          ),
          body:TabBarView(
            children: [
              ListView(
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

                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.settings_input_component_outlined, color: Colors.black,),
                          ),

                          hintText: "Search",

                          hintStyle: TextStyle(

                            color: Colors.black54,
                            fontFamily:'Poppins',

                          ),





                        ),


                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(height: MediaQuery.of(context).size.height*0.5,
                          width: MediaQuery.of(context).size.width),
                      Image.asset("images/Rectangle.png",height: MediaQuery.of(context).size.height*0.35,
                        width: MediaQuery.of(context).size.width,),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.2,
                        left: MediaQuery.of(context).size.width*0.19,
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

                          height: 238.45,width: 301.81,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text("Yoga Classes", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w900),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Sun, Jan 25 - 4:30 PM Set", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w400),),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("Tobacco Dock, London...", style: TextStyle(color: Colors.black,fontSize: 12, fontWeight: FontWeight.w400),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.people, size: 30, color: Colors.redAccent,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Full", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500),),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("20", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.w900),),
                                    ),
                                  ],
                                ),

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  FlatButton(
                                    color: Color.fromRGBO(209, 55, 57, 1),
                                    child: Text("Edit Event", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w500),),
                                    shape: RoundedRectangleBorder(side: BorderSide(
                                        color: Color.fromRGBO(209, 55, 57, 1),

                                        width: 1,
                                        style: BorderStyle.solid
                                    ), borderRadius: BorderRadius.circular(7)),
                                    onPressed: (){

                                    },
                                  ),
                                  FlatButton(
                                    color: Color.fromRGBO(217, 217, 217, 1),
                                    child: Text("View Event", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w500),),
                                    shape: RoundedRectangleBorder(side: BorderSide(
                                        color: Color.fromRGBO(217, 217, 217, 1),

                                        width: 1,
                                        style: BorderStyle.solid
                                    ), borderRadius: BorderRadius.circular(7)),
                                    onPressed: (){

                                    },
                                  ),
                                ],
                              )

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.10,),
                  IconButton(icon: Icon(Icons.add_circle),
                      color: Color.fromRGBO(69, 95, 170, 1),
                      iconSize: 78,
                      onPressed: (){})
                ],
              ),

              Icon(Icons.directions_transit),

            ],
          ),
        ),
      );


  }
}
