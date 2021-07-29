import 'package:dance_id_user/accounts/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DanceIdSuccess extends StatefulWidget {
  @override
  _DanceIdSuccessState createState() => _DanceIdSuccessState();
}

class _DanceIdSuccessState extends State<DanceIdSuccess> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .35,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(26, 194, 43, 1),
                  borderRadius: BorderRadius.circular(500),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                      Icons.check,
                      size: 52,
                      color: Colors.white
                  ),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Waiting for admin ", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.25,),
            Center(
              child: SizedBox(
                width: 309,
                height: 50,
                child: FlatButton(
                  color: Color.fromRGBO(59, 59, 59, 1),
                  child: Text("Back to login", style: TextStyle(color: Colors.white),),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(33.33)),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginDance()));
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


