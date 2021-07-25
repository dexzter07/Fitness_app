import 'package:dance_id_user/components/profile4.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class Danceidprofile3 extends StatefulWidget {
  @override
  _Danceidprofile3State createState() => _Danceidprofile3State();
}

class _Danceidprofile3State extends State<Danceidprofile3> {

  File _image;


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
        title: Text("Upload Business Documents", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
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
                    height: 165,
                    fit: BoxFit.fitHeight,
                  ),
                )
                    : DottedBorder(
                  color: Color.fromRGBO(196, 196, 196, 1),

                  strokeWidth: 2,
                  dashPattern: [5, 5],
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)),
                    width: 309,
                    height: 165,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
                          child: Image.asset("images/Vector.png", width: 52, height: 40.93,color: Color.fromRGBO(196, 196, 196, 1),),
                        ),
                        Text("Upload Document",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Colors.black),)
                      ],
                    ),
                  ),
                )


            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
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
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Danceidprofile4()));
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
