import 'package:dance_id_user/components/step2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Steps1forbussiness extends StatefulWidget {
  @override
  _Steps1forbussinessState createState() => _Steps1forbussinessState();
}

class _Steps1forbussinessState extends State<Steps1forbussiness> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(236, 240, 251, 1),
              ]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(height: 70,),
            Text("STEP 1 0F 4",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("Please describe your business.",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => step2forbussiness()));
                    },
                    child: Container(
                      width: 161,
                      height: 190,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                            child: Image.asset("images/image 1.png", width: 104, height: 104,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Fitness", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                          )
                        ],
                      ),
                    ),
                  ),SizedBox(height: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 161,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                              child: Image.asset("images/image 3.png", width: 104, height: 104,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Spa", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
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
                        width: 161,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                              child: Image.asset("images/image 2.png", width: 104, height: 104,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Salon", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: 161,
                        height: 190,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,16,0, 0),
                              child: Image.asset("images/image 4.png", width: 104, height: 104,),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                              child: Text("Integrative", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),


                            ),
                            Text("Health", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),

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


    )
    );
  }
}
