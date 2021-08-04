import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:io';
class CreateEvents extends StatefulWidget {
  @override
  _CreateEventsState createState() => _CreateEventsState();
}

class _CreateEventsState extends State<CreateEvents> {

  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2021), lastDate: DateTime(2022));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

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
      appBar: AppBar(
        title: Text("Create Events", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: Text("Cover Image:", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
              ),
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
                  ):Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 329.01,
                      height: 165.78,
                      decoration: BoxDecoration(
                              color: Colors.grey[200],
                                borderRadius: BorderRadius.all(Radius.circular(7))

                            ),
                      child: Center(
                        child: Container(
                                  width:61.41,
                                  height: 61.41,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.all(Radius.circular(50))
                                  ),
                                  child: Icon(Icons.camera_alt, color: Colors.white,)),
                      ),
                          ),
                  ),
                    // child: Stack(
                    //   children: [
                    //     Container(
                    //       width: 329.01,
                    //       height: 165.78,
                    //
                    //       decoration: BoxDecoration(
                    //         color: Colors.grey[200],
                    //           borderRadius: BorderRadius.all(Radius.circular(7))
                    //
                    //       ),
                    //       // child: Image.asset("images/Rectangle 14.png",
                    //       // ),
                    //     ),
                    //
                    //     Positioned(
                    //       top: MediaQuery.of(context).size.height*0.05,
                    //       left: MediaQuery.of(context).size.width*0.27,
                    //       child: Container(
                    //           width:61.41,
                    //           height: 61.41,
                    //           decoration: BoxDecoration(
                    //               color: Colors.grey,
                    //               borderRadius: BorderRadius.all(Radius.circular(50))
                    //           ),
                    //           child: Icon(Icons.camera_alt, color: Colors.white,)),
                    //     ),
                    //
                    //
                    //
                    //   ],
                    //
                    // ),
                  // )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
                child: Text("Event Name", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
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
                child: Text("Event Description", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: SizedBox(
                  width: 327.34,
                  child: TextFormField(

                    maxLines: 7,
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
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: Text("Event Location", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
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
                child: Text("Event Date", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
              ),



              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 240, 251, 0.37),
                      borderRadius: BorderRadius.all(Radius.circular(33))
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(icon: Icon(Icons.calendar_today, size: 17,),  onPressed: () => _selectDate(context)),
                      Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: TextStyle(fontSize: 16,color: Color.fromRGBO(1, 1 , 1, 1),),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: Text("Timing:", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
              Center(
                child: SizedBox(
                  width: 306,
                  height: 50,
                  child: FlatButton(
                    color: Color.fromRGBO(59, 59, 59, 1),
                    child: Text("Create Events", style: TextStyle(color: Colors.white),),
                    shape: RoundedRectangleBorder(side: BorderSide(
                        color: Colors.black,
                        width: 1,
                        style: BorderStyle.solid
                    ), borderRadius: BorderRadius.circular(21)),
                    onPressed: (){

                    },
                  ),
                ),
              ),//Ro
              SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
// w
            ],
      ),
    );
  }
}
