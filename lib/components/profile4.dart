import 'package:dance_id_user/components/paymentmethod1.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class Danceidprofile4 extends StatefulWidget {
  @override
  _Danceidprofile4State createState() => _Danceidprofile4State();
}

class _Danceidprofile4State extends State<Danceidprofile4> {

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
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: GestureDetector(
                onTap: () {
                  _showPicker(context);
                },
                child: _image != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.file(
                    _image,
                    width: 252,
                    height: 252,
                    fit: BoxFit.fitHeight,
                  ),
                )
                    : Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(150)),
                    width: 252,
                    height: 252,
                    child: Icon(
                      Icons.camera_alt,
                      size: 42,
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),
                  ),
                )
            ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text("Please upload a passport-style photo without sunflasses",style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700,color: Colors.black),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.25,),
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
                  Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentMethod1()));
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
