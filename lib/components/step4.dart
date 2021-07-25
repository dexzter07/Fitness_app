import 'package:dance_id_user/components/profile1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class step4forbussiness extends StatefulWidget {
  @override
  _step4forbussinessState createState() => _step4forbussinessState();
}

class _step4forbussinessState extends State<step4forbussiness> {
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
            Text("STEP 4 0F 4",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            Center(child: Text("How can we contact you?",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),)),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: SizedBox(
                width: 350,
                child: Material(
                  elevation: 4,
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                  borderRadius: BorderRadius.circular(7),
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
                      hintText: "First name",

                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.white)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide: BorderSide(color: Colors.white)

                      ),

                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,


                      ),

                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: SizedBox(
                width: 350,
                child: Material(
                  elevation: 4,
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                  borderRadius: BorderRadius.circular(7),
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
                      hintText: "Last name",

                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.white)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide: BorderSide(color: Colors.white)

                      ),

                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,


                      ),

                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: SizedBox(
                width: 350,
                child: Material(
                  elevation: 4,
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                  borderRadius: BorderRadius.circular(7),
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
                      hintText: "Business email",

                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.white)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide: BorderSide(color: Colors.white)

                      ),

                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,


                      ),

                    ),

                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            Container(
              width: 310,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(7)),


              ),
              child: DropdownButton<String>(
                underline: SizedBox(),
                hint: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Country code", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                ),
                items: <String>['+91', "+11"].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: SizedBox(
                width: 350,
                child: Material(
                  elevation: 4,
                  shadowColor: Color.fromRGBO(0, 0, 0, 0.06),

                  borderRadius: BorderRadius.circular(7),
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
                      height: 0.5,

                    ),


                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Business phone",

                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          borderSide: BorderSide(color: Colors.white)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide: BorderSide(color: Colors.white)

                      ),

                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,


                      ),

                    ),

                  ),
                ),
              ),
            ),

            SizedBox(height: 60,),
            Center(
              child: SizedBox(
                width: 306,
                height: 50,
                child: FlatButton(
                  color: Color.fromRGBO(59, 59, 59, 1),
                  child: Text("GET A DEMO", style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(7)),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => DanceIdprofile1()));
                  },
                ),
              ),
            ),//
            SizedBox(height: 10,)

          ],
        ),
      ),
    );
  }
}
