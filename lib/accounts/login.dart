import 'package:dance_id_user/accounts/forgotpassword.dart';
import 'package:dance_id_user/accounts/register.dart';
import 'package:dance_id_user/components/step1.dart';
import 'package:flutter/material.dart';

class LoginDance extends StatefulWidget {
  @override
  _LoginDanceState createState() => _LoginDanceState();
}

class _LoginDanceState extends State<LoginDance> {
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
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Image.asset("images/logo.png", width: 116.03, height: 102.67,),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text("Welcome Back To", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text("Login", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, height: 0.5),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text("Email/Mobile Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
                        return 'Please enter the number';
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
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text("Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
                        return 'Please enter the password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    obscuringCharacter: "*",
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
                  child: Text("SIGN IN", style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(21)),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Steps1forbussiness()));
                  },
                ),
              ),
            ),
            SizedBox(height: 40,),

            Center(
              child: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPasswordDance()));
                },
                child: Text("FORGOT PASSWORD", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't  have an account? ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                InkWell(
                    onTap:(){
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
