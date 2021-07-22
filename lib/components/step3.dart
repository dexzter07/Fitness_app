import 'package:dance_id_user/components/step4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class step3forbussiness extends StatefulWidget {
  @override
  _step3forbussinessState createState() => _step3forbussinessState();
}

class _step3forbussinessState extends State<step3forbussiness> {
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
        body: ListView(

          children: [
            Column(

            children: [
              SizedBox(height: 70,),
              Text("STEP 3 0F 4",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Text("Tell us about your business.",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),),

              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,8,0, 0),
                  child: Image.asset("images/image 5.png", width: 236, height: 236,),
                ),
              ),
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
                        hintText: "Business name",

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
                        hintText: "Business postal code",

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
                padding: const EdgeInsets.fromLTRB(0, 0, 180, 0),
                child: Text("Number of locations", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,),),
              ),
              Column(
                children: [
                  Row(

                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Radio(
                          value: this.checked,

                          onChanged: (bool value) {
                            setState(() {
                              this.checked = value;
                            });
                          },

                        ),
                      ),


                      Text(
                        '1 location',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(

                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Radio(
                          value: this.checked,

                          onChanged: (bool value) {
                            setState(() {
                              this.checked = value;
                            });
                          },

                        ),
                      ),


                      Text(
                        '2-9 locations',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  Row(

                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Padding(
                        padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                        child: Radio(
                          value: this.checked,

                          onChanged: (bool value) {
                            setState(() {
                              this.checked = value;
                            });
                          },

                        ),
                      ),


                      Text(
                        '10+ locations',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text("Do you currently use software to run your business?", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(7)),


                    ),
                    child: Center(
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        hint: Text("Yes, I use Mindbody", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                        items: <String>['Yes, I use Mindbody', "No, I don't use Mindbody"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: SizedBox(
                      width: 306,
                      height: 50,
                      child: FlatButton(
                        color: Color.fromRGBO(59, 59, 59, 1),
                        child: Text("NEXT", style: TextStyle(color: Colors.white),),
                        shape: RoundedRectangleBorder(side: BorderSide(
                            color: Colors.black,
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(7)),
                        onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => step4forbussiness()));
                        },
                      ),
                    ),
                  ),//
                  SizedBox(height: 10,)
                ],
              ),
            ],
          ),
      ]
        ),
      ),
    );
  }
}
