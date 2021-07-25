import 'package:dance_id_user/components/paymentmethod3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod1 extends StatefulWidget {
  @override
  _PaymentMethod1State createState() => _PaymentMethod1State();
}

class _PaymentMethod1State extends State<PaymentMethod1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Payment Method", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,

      ),
      body: ListView(
        children: [
          InkWell(
            highlightColor: Color.fromRGBO(235, 240, 255, 1),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => PaymentMethod3()));

            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: Icon(
                    Icons.credit_card,
                    size: 32,
                    color: Colors.black
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Credit Card Or Debit", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                )
              ],
            ),
          ),
          InkWell(
            highlightColor: Color.fromRGBO(235, 240, 255, 1),
            onTap: (){},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),

                  child: Icon(
                    Icons.account_balance,
                    size: 32,
                    color: Colors.black
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Bank Transfer", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
