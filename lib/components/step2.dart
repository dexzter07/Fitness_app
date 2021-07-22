import 'package:dance_id_user/components/step3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class step2forbussiness extends StatefulWidget {
  @override
  _step2forbussinessState createState() => _step2forbussinessState();
}

class _step2forbussinessState extends State<step2forbussiness> {
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
                Text("STEP 2 0F 4",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                Text("Has your business launched yet?",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => step3forbussiness()));
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
                                  child: Text("No, not yet", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                                )
                              ],
                            ),
                          ),
                        )
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
                                  child: Image.asset("images/step2image2.png", width: 104, height: 104,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(child: Text("Yes, we're up and running", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
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


        )
    );
  }
}
