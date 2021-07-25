import 'package:dance_id_user/accounts/login.dart';
import 'package:flutter/material.dart';

class RegisterDance extends StatefulWidget {
  @override
  _RegisterDanceState createState() => _RegisterDanceState();
}

class _RegisterDanceState extends State<RegisterDance> {
  bool checked = false;
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
              Center(child: Text("Sign Up",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),)),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                child: Text("Full Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
                        height: 0.5,

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
                child: Text("Email / Mobile Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
                        height: 0.5,

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
                          return 'Please enter the Email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      obscuringCharacter: "*",

                      style: TextStyle(
                        height: 0.5,

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
                child: Text("Confirm Password", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
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
                      obscureText: true,
                      obscuringCharacter: "*",

                      style: TextStyle(
                        height: 0.5,

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
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    //Text
                    /** Checkbox Widget **/
                    Checkbox(
                      value: this.checked,

                      onChanged: (bool value) {
                        setState(() {
                          this.checked = value;
                        });
                      },
                    ),
                    SizedBox(width: 1), //SizedBox

                    Text(
                      'I agree to the terms and conditions ',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ), //Checkbox
                  ], //<Widget>[]
                ),
              ),
              SizedBox(height: 20,),
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

                    },
                  ),
                ),
              ),//Row
              SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't  have an account? ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                      onTap:() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginDance()));
                      },
                      child: Text("Sign In", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),))
                ],
              )
            ],
          ),
        ));
  }
}
