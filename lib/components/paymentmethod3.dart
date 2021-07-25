import 'package:dance_id_user/components/bankdetails.dart';
import 'package:flutter/material.dart';

class PaymentMethod3 extends StatefulWidget {
  @override
  _PaymentMethod3State createState() => _PaymentMethod3State();
}

class _PaymentMethod3State extends State<PaymentMethod3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Card", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

      ),
      body: ListView(

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 10, 7),
            child: Text("Card Number",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 7),
            child: SizedBox(
              width: 343,
              height: 48,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please enter the Email';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  obscureText: false,

                  style: TextStyle(
                    height: 1,

                  ),


                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    hintText: "Enter Card Number",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400

                    ),

                  ),

                ),
              ),
            ),
          ),
          Row(


            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 10, 7),
                child: Text("Expiration Date",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 20, 10, 7),
                child: Text("Security Code",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 165,
                  height: 48,
                  child: Material(
                    elevation: 4,
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                    borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      validator: (value){
                        if (value.isEmpty){
                          return 'Please enter the Email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      obscureText: false,

                      style: TextStyle(
                        height: 1,

                      ),


                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                        ),
                        hintText: "Expiration Date",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily:'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400

                        ),

                      ),

                    ),
                  ),
                ),
                SizedBox(
                  width: 165,
                  height: 48,
                  child: Material(
                    elevation: 4,
                    shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                    borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      validator: (value){
                        if (value.isEmpty){
                          return 'Please enter the Email';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      obscureText: false,

                      style: TextStyle(
                        height: 1,

                      ),


                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(

                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                        ),
                        hintText: "Security Code",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontFamily:'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400

                        ),

                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 20, 10, 7),
            child: Text("Card Holder",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 7),
            child: SizedBox(
              width: 343,
              height: 48,
              child: Material(
                elevation: 4,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                borderRadius: BorderRadius.circular(10),
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

                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21))

                    ),
                    hintText: "Enter Card Holder Name",
                    hintStyle: TextStyle(
                        color: Colors.black54,
                        fontFamily:'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400

                    ),

                  ),

                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Center(
            child: SizedBox(
              width: 342,
              height: 57,
              child: FlatButton(
                color: Color.fromRGBO(59, 59, 59, 1),
                child: Text("Add Card", style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(5)),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => BankDetails()));
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
