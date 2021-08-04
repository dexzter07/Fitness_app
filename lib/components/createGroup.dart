import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  bool checked = false;
  bool checked1 = false;
  bool checked2 = false;
  bool checked3 = false;
  bool checked4 = false;
  bool checked5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Group", style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: Text("Group Name", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
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
            child: Text("Group Category", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: DropdownButton<String>(

              underline: SizedBox(),
              hint: Text("Choose Category", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,)),
              items: <String>['Jumba', "Aerobic", "Gymnasium"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 40, 7),
            child: Text("Add Customers", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w700),),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 1',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked1,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked1 = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 2',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked2,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked2 = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 3',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked3,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked3 = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 4',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked4,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked4 = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 5',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[

                      //Text
                      /** Checkbox Widget **/
                      Checkbox(
                        value: this.checked5,

                        onChanged: (bool value) {
                          setState(() {
                            this.checked5 = value;
                          });
                        },
                      ),
                      SizedBox(width: 1), //SizedBox

                      Text(
                        'User 6',
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.10,),
          Center(
            child: SizedBox(
              width: 306,
              height: 50,
              child: FlatButton(
                color: Color.fromRGBO(59, 59, 59, 1),
                child: Text("Create Group", style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(side: BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(21)),
                onPressed: (){

                },
              ),
            ),
          ),//Row
        ],
      ),
    );
  }
}
