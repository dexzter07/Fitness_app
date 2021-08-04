import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Editevents extends StatefulWidget {
  @override
  _EditeventsState createState() => _EditeventsState();
}

class _EditeventsState extends State<Editevents> {
  File _image;
  String _select;

  _imgFromCamera() async {
    // ignore: deprecated_member_use
    File image = (await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    ));

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = (await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    ));

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.01,),
          GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: _image != null
                  ? ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.file(
                  _image,
                  width: 309,
                  height: 115.31,
                  fit: BoxFit.fitHeight,
                ),
              ):Center(
                child: Stack(
                 children: [
                   Center(
                     child: Container(
                       width: 329.01,
                       height: 165.78,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(7))
                       ),
                       child: Image.asset("images/Rectangle 14.png",
                       ),
                     ),
                   ),

                         Positioned(

                           child: Center(
                             child: Padding(
                               padding: const EdgeInsets.only(top: 30),
                               child: Container(
                                   width:61.41,
                                   height: 61.41,
                                   decoration: BoxDecoration(
                                       color: Color.fromRGBO(156, 10, 93, 1),
                                       borderRadius: BorderRadius.all(Radius.circular(50))
                                   ),
                                   child: Icon(Icons.camera_alt, color: Colors.white,)),
                             ),
                           ),
                         ),



                 ],

                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 10, 20, 10),
            child: Row(
              children: [
                Container(
                  width: 75.84,
                  height: 76.72,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("images/Rectangle.png", fit: BoxFit.fitHeight,),
                  ),

                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.010,),
                Container(
                  width: 75.84,
                  height: 76.72,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(1),
                    child: Image.asset("images/Rectangle.png", fit: BoxFit.fitHeight,),
                  ),

                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 327.34,
              height: 51.66,
              child: Material(
                elevation: 1,
                shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                    fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                    ),
                    hintText:  "Ny Singles Party Event ",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 143.1,
                  height: 51.66,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 240, 251, 0.37),
                    borderRadius: BorderRadius.all(Radius.circular(7)),


                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      underline: SizedBox(),
                      hint: Text("Sun, Jan 25", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                      items: <String>['Sun, Jan 25', "Sun, Jan 27"].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
                Container(
                  width: 143.1,
                  height: 51.66,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(236, 240, 251, 0.37),
                    borderRadius: BorderRadius.all(Radius.circular(7)),


                  ),
                  child: Center(
                    child: DropdownButton<String>(
                      underline: SizedBox(),
                      hint: Text("4:30 PM", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
                      items:<String>['4:30 PM', "5:30 PM"].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Container(
              width: 327.34,
              height: 51.66,
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 240, 251, 0.37),
                borderRadius: BorderRadius.all(Radius.circular(7)),


              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  hint: Text("Event Capacity", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                  items: <String>['12', "15"].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 327.34,
              height: 51.66,
              child: Material(
                elevation: 1,
                shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                    fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                    ),
                    hintText:  "Price ",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 327.34,
              child: TextFormField(

                maxLines: 8,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                    hintStyle: TextStyle(color: Colors.black54, fontFamily:'Poppins',fontSize:14, fontWeight: FontWeight.w500 ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0),
                    ),
                  hintText:  "About ",

                ),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Text("Location", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Container(
              width: 327.34,
              height: 335.98,
              color: Color.fromRGBO(236, 240, 251, 0.37),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Stage 47", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("605 W 47th Street, Manhattan, 10036", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("3.5 km nearby", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Image.asset("images/Rectangle 698.png", width: 290.61, height: 148.39,)),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height*0.05,
                          left: MediaQuery.of(context).size.width*0.27,
                          child: Container(
                              width:61.41,
                              height: 61.41,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(100, 134, 255, 0.2),
                                  borderRadius: BorderRadius.all(Radius.circular(50))

                              ),
                              child: Icon(Icons.circle, size: 16, color:Color.fromRGBO(100, 134, 255, 1),)),
                        ),
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        width: 290.61,
                        height: 43.93,
                        child: FlatButton(
                          color: Color.fromRGBO(69, 95, 170, 1),
                          child: Text("Edit", style: TextStyle(color: Colors.white,fontSize: 15, fontWeight: FontWeight.w500),),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Color.fromRGBO(69, 95, 170, 1),

                              width: 1,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(21.96)),
                          onPressed: (){

                          },
                        ),
                      ),
                    ),//

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Text("Contact", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 327.34,
              height: 51.66,
              child: Material(
                elevation: 1,
                shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                    fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                    ),
                    hintText:  "help@gmail.com ",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),

                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: SizedBox(
              width: 327.34,
              height: 51.66,
              child: Material(
                elevation: 1,
                shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                    fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                    enabledBorder: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                    ),
                    hintText:  "98774566020",
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily:'Poppins',
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
            child: Text("Add social media account", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),),
          ),
          Column(

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Container(
                      width: 31.08,
                        height: 31.08,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(66, 133, 244, 1),
                          borderRadius: BorderRadius.all(Radius.circular(21))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset("images/facebook.png", width: 12.73, height: 25.47,),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 7),
                      child: SizedBox(
                        width: 267,
                        height: 44,
                        child: Material(
                          elevation: 1,
                          shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                              fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                              ),
                              hintText:  "Facebook (url)",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontFamily:'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),

                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),

                child: Row(
                  children: [
                    Container(
                        width: 31.08,
                        height: 31.08,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.all(Radius.circular(21))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset("images/twitter.png", width: 12.73, height: 25.47,),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 7),
                      child: SizedBox(
                        width: 267,
                        height: 44,
                        child: Material(
                          elevation: 1,
                          shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                              fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                              ),
                              hintText:  "Twitter (url)",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontFamily:'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),

                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),

                child: Row(
                  children: [
                    Container(
                        width: 31.08,
                        height: 31.08,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                colors: [
                                  Color.fromRGBO(255, 221, 85, 1),
                                  Color.fromRGBO(255, 84, 62, 1),
                                  Color.fromRGBO(200, 55, 171, 1),
                                ]
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset("images/instagram.png", width: 12.73, height: 25.47,),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 7),
                      child: SizedBox(
                        width: 267,
                        height: 44,
                        child: Material(
                          elevation: 1,
                          shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                              fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                              ),
                              hintText:  "Instagram (url)",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontFamily:'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),

                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),

                child: Row(
                  children: [
                    Container(
                        width: 31.08,
                        height: 31.08,
                        decoration: BoxDecoration(
                             color:Color.fromRGBO(85, 205, 108, 1),
                            borderRadius: BorderRadius.all(Radius.circular(21))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset("images/whatsapp.png", width: 12.73, height: 25.47,),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 7),
                      child: SizedBox(
                        width: 267,
                        height: 44,
                        child: Material(
                          elevation: 1,
                          shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                              fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                              ),
                              hintText:  "Whatsapp (url)",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontFamily:'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),

                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),

                child: Row(
                  children: [
                    Container(
                        width: 31.08,
                        height: 31.08,
                        decoration: BoxDecoration(
                            color:Color.fromRGBO(69, 95, 170, 1),
                            borderRadius: BorderRadius.all(Radius.circular(21))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset("images/website.png", width: 12.73, height: 25.47,),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 0, 7),
                      child: SizedBox(
                        width: 267,
                        height: 44,
                        child: Material(
                          elevation: 1,
                          shadowColor: Color.fromRGBO(236, 240, 251, 0.37),

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
                              fillColor: Color.fromRGBO(236, 240, 251, 0.37),
                              enabledBorder: OutlineInputBorder(

                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)

                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                  borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 0)


                              ),
                              hintText:  "Establishment website ",
                              hintStyle: TextStyle(
                                color: Colors.black54,
                                fontFamily:'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),

                            ),

                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Container(
              width: 333,
              height: 57.25,
              child: FlatButton(
                color: Color.fromRGBO(69, 95, 170, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Save Changes", style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.w700),),
                    Icon(Icons.arrow_forward, color: Color.fromRGBO(255, 255, 255, 1))
                  ],
                ),
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Color.fromRGBO(217, 217, 217, 1),

                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(36)),
                onPressed: (){

                },
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

        ],
      ),
    );
  }
}
