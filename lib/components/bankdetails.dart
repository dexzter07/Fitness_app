import 'package:dance_id_user/components/success.dart';
import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Bank Account", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
            child: Text("Account Holder Name",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(500),
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
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

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
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
            child: Text("Bank Name",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(500),
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
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

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
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
            child: Text("Account  Type",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(500),
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
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

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
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
            child: Text("Bank Code",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(500),
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
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

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
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
            child: Text("Account Code",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 309,
              height: 46,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(500),
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
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(500)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

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
          SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
          Center(
            child: SizedBox(
              width: 309,
              height: 50,
              child: FlatButton(
                color: Color.fromRGBO(59, 59, 59, 1),
                child: Text("Continue", style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(33.33)),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => DanceIdSuccess()));
                },
              ),
            ),
          ),//
          SizedBox(height: 10,)

        ],
      ),
    );
  }
}
