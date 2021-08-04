import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewevents extends StatefulWidget {
  @override
  _VieweventsState createState() => _VieweventsState();
}

class _VieweventsState extends State<Viewevents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            
            children: [
              Container(
                width: 479.04,
                height: 251.39,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.all(Radius.circular(7))

                ),
                child: Image.asset("images/Rectangle 14.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.05,
                  left: MediaQuery.of(context).size.width*0.02,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)
                        )
                      ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Yoga Classes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Icon(Icons.circle, color: Color.fromRGBO(196, 196, 196, 1),),
                Text("Sun, Jan 25 - 4:30 PM Set", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.people, size: 60, color: Colors.redAccent,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Full", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w500),),
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("\$20", style: TextStyle(color: Colors.black,fontSize: 27, fontWeight: FontWeight.w700),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("About", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Dummy text is text that is used in the publishing ind ustry or by web designers to occupy the space which will later be filled with 'real' content. This is required when, for example, the final text is not yet available. Dummy text is also known as 'fill text'. It is said that song composers of the past used dummy texts as lyrics",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Location", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 0, 10),
            child: Text("Stage 47", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Text("605 W 47th Street, Manhattan, 10036", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Text("3.5 km nearby", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Center(child: Image.asset("images/Rectangle 698.png", width: 479, height: 188.5,
                fit: BoxFit.fitWidth,
                )),
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Contact", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w700, fontStyle: FontStyle.italic),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 10, 0, 10),
            child: Text("Send us an email at help@demo.com", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 10),
            child: Text("or call us at 98774566020", style: TextStyle(color: Colors.black,fontSize: 14, fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Container(
              width: 333,
              height: 70,
              child: FlatButton(
                color: Color.fromRGBO(69, 95, 170, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Edit Event", style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.w900),),
                    ),
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
