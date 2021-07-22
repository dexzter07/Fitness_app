import 'package:dance_id_user/accounts/otp.dart';
import 'package:dance_id_user/accounts/register.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ForgotPasswordDance extends StatefulWidget {
  @override
  _ForgotPasswordDanceState createState() => _ForgotPasswordDanceState();
}

class _ForgotPasswordDanceState extends State<ForgotPasswordDance> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
              Center(child: Image.asset("images/logo.png", width: 156.42, height: 138.41,)),
              SizedBox(height: 10,),
              Center(child: Text("Forgot Password", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),)),
              Center(child: Text("Enter your email and we’ll send you instructions", style: TextStyle(height: 2, fontSize: 15, fontWeight: FontWeight.w400),)),
              Center(child: Text("on how to reset your password", style: TextStyle( fontSize: 15, fontWeight: FontWeight.w400),)),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text("Email", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: SizedBox(
                  width: 350,
                  child: Material(
                    elevation: 4,
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                    borderRadius: BorderRadius.circular(33),
                    child: TextFormField(
                      validator: (value){
                        if (value.isEmpty){
                          return 'Please enter the Email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      obscureText: false,

                      style: TextStyle(
                        height: 0.8,

                      ),


                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.all(Radius.circular(33.0)),
                            borderSide: BorderSide(color: Colors.white)

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(33.0)),
                            borderSide: BorderSide(color: Colors.white)

                        ),

                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily:'Poppins',

                        ),

                      ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: SizedBox(
                  width: 306,
                  height: 50,
                  child: FlatButton(
                    color: Color.fromRGBO(59, 59, 59, 1),
                    child: Text("SEND", style: TextStyle(color: Colors.white),),
                    shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(21)),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassword_2()));
                    },
                  ),
                ),
              ),



              SizedBox(height: 230,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't  have an account? ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap:() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterDance()));
                      },
                      child: Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),))
                ],
              )

            ],
          ),
      ),
    );
  }
}
