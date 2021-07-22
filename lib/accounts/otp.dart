import 'dart:convert';
import 'package:dance_id_user/accounts/login.dart';
import 'package:flutter/material.dart';

class ForgotPassword_2 extends StatefulWidget {


  @override
  _ForgotPassword_2State createState() => _ForgotPassword_2State();
}

class _ForgotPassword_2State extends State<ForgotPassword_2> {


  TextEditingController t1 = TextEditingController();

  TextEditingController t2 = TextEditingController();

  TextEditingController t3 = TextEditingController();

  TextEditingController t4 = TextEditingController();



  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: SingleChildScrollView(
          child:

             Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70,),
                      Center(child: Image.asset("images/logo.png", width: 186.13, height: 164.69,)),
                      SizedBox(height: 20,),
                      Center(child: Text("OTP has been sent your email",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),)),
                      Center(child: Text("Please enter your OTP code",style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),)),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyContainer(con: t1,),
                          MyContainer(con: t2,),
                          MyContainer(con: t3,),
                          MyContainer(con: t4,),

                        ],
                      ),
                      SizedBox(height: 40,),

                      Center(
                        child: SizedBox(
                          width: 306,
                          height: 50,
                          child: FlatButton(
                            color: Color.fromRGBO(209, 55, 57, 1),

                            child: Text("Verify", style: TextStyle(color: Colors.white),),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(21)),
                            onPressed: (){

                            },
                          ),
                        ),
                      ),//Row
                    ],
                  )
    ),
    );
  }
}





class MyContainer extends StatelessWidget {
  TextEditingController con;
  MyContainer({this.con});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),

      ),
      height: height*0.08,
      width: width*0.14,
      child: TextField(

        maxLength: 1,
        controller: con,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 30),
        decoration: InputDecoration(
            counterText: "",
            contentPadding: EdgeInsets.fromLTRB(20,19,10,0),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width:1,color: Colors.white))
        ),
      ),
    );
  }
}