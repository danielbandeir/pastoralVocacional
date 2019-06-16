import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';

class EventosScreen extends StatefulWidget {
  @override
  _EventosScreenState createState() => _EventosScreenState();
}

class _EventosScreenState extends State<EventosScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            height: 50,
            color: customStyles.mainColor,
            child: TabBar(
            tabs: <Widget>[
              Center(
                child: Text('SV',
                style: TextStyle(color: Colors.white, fontFamily: 'FuturaBold'),
                ),
              ),
              Center(
                child: Text('EV',
                style: TextStyle(color: Colors.white, fontFamily: 'FuturaBold'),
                ),
              ),
            ],
          ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}