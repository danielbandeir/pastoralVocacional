import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';


class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: customStyles.mainColor,
                    height: MediaQuery.of(context).size.height*0.27,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        color: customStyles.white,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(),
                            ),
                            Expanded(
                                flex: 3,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: demonstrador(Icons.notifications, context),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: demonstrador(Icons.person, context),
                                    )
                                  ],
                                ))
                          ],
                        )
                    ))
              ],
            ),
            Center(
              heightFactor: 1,
              child: CircleAvatar(
                backgroundColor: customStyles.mainColor,
                radius: MediaQuery.of(context).size.width < 600 ? 90 : 120,
                child: CircleAvatar(
                  backgroundColor: customStyles.white,
                  radius: MediaQuery.of(context).size.width < 600 ? 80 : 100,
                  child: Text("Logo", style: TextStyle(color: customStyles.mainColor, fontSize: 50),),
                ),
              ),
            )
          ],
        ),
    );
  }

  Widget demonstrador(IconData icon, BuildContext context){
    return Column(
      children: <Widget>[
        Icon( icon, size: MediaQuery.of(context).size.width < 600 ? 70 : 90, color: customStyles.mainColor,),
        Text("00", style: TextStyle(fontSize: MediaQuery.of(context).size.width < 600 ? 45 : 65, fontWeight: FontWeight.w500, color: customStyles.mainColor),)
      ],
    );
  }


}

