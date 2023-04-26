import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  const BizCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("BizCard"),
      // ),
      backgroundColor: Colors.deepPurple,
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            _getCard(),
            _getavatar(),
          ],
        ),
      ), 
    );
  }

  _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
          color: Colors.tealAccent, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Mark Godwill"),
          Text("investwithcryptofx.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outlined),
              Text("T: @buildappwithme")
            ],
          )
        ],
      ),
    );
  }

  _getavatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:BorderRadius.circular(50.0),
        border: Border.all(
          color: Colors.tealAccent,
          width: 1.4),
          image: DecorationImage(image: AssetImage('assets/green-g15b705265_640.jpg'),
          fit: BoxFit.cover)
      ),
    );
  }
}
