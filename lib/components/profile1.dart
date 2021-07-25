import 'package:dance_id_user/components/profile2.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';


class DanceIdprofile1 extends StatefulWidget {

  @override
  _DanceIdprofile1State createState() => _DanceIdprofile1State();
}

class _DanceIdprofile1State extends State<DanceIdprofile1> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Information", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 22,
              ),
              Center(
                child: GestureDetector(
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
                    )
                        : DottedBorder(
                      color: Color.fromRGBO(196, 196, 196, 1),

                      strokeWidth: 2,
                      dashPattern: [5, 5],
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7)),
                        width: 309,
                        height: 115.31,
                        child: Column(
                          children: [
                            Icon(
                              Icons.add,
                              size: 74,
                              color: Color.fromRGBO(196, 196, 196, 1),
                            ),
                            Text("Business Image",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),)
                          ],
                        ),
                      ),
                    )


                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
                child: Text("Business Name",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: SizedBox(
                  width: 309,
                  height: 46,
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
                child: Text("Business Bio",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
                child: SizedBox(
                  width: 309,
                  child: TextFormField(

                    maxLines: 5,
                    decoration: InputDecoration(

                        hintStyle: TextStyle(color: Colors.black, fontFamily:'Poppins',),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(16, 130, 222, 0.21)),
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 7),
                child: Text("Business Category",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),),
              ),
            ],
          ),
      Padding(
        padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
        child: Container(
          width: 310,
          decoration: BoxDecoration(

            color: Color.fromRGBO(16, 130, 222, 0.21),
            borderRadius: BorderRadius.all(Radius.circular(7)),

          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(


                  dropdownColor: Colors.white,
hint: Text("Yoga"),
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 30.0,
                  isExpanded: true,
                  underline: SizedBox(),

                  style: TextStyle(

                    color: Color.fromRGBO(1, 1 , 1, 1),
                    fontSize: 16,
                    fontFamily:'Poppins',
                  ),

                  items: <String>['Yoga', "Gym"].map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList() ,
                  onChanged: (newVal) {
                    setState(() {
                      _select = newVal;

                    });
                  },
                  value: _select,


                ),
              ),


            ],
          ),
        ),
      ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.09,),
          Center(
            child: SizedBox(
              width: 306,
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
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Danceidprofile2()));
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
