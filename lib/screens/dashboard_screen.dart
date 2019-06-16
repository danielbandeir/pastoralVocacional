import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:pastoravocacional/blocs/dashboard_bloc.dart';


class DashBoardScreen extends StatelessWidget {

  DashboardBloc bloc;

  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.getBloc<DashboardBloc>();
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
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    FutureBuilder<int>(
                                      future: bloc.getLengthEvents(),
                                      builder: (context, snapshot) {
                                        return snapshot.hasData ? Expanded(
                                          flex: 1,
                                          child: demonstrador(snapshot.data, Icons.notifications, context),
                                        ) : Center(child: CircularProgressIndicator());
                                      }
                                    ),
                                    FutureBuilder<int>(
                                      future: bloc.getLengthEvents(),
                                      builder: (context, snapshot) {
                                        return snapshot.hasData ? Expanded(
                                          flex: 1,
                                          child: demonstrador(snapshot.data, Icons.person, context),
                                        ) : Center(child: CircularProgressIndicator());
                                      }
                                    ),
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
                radius: MediaQuery.of(context).size.height < 600 ? 90 : 112,
                child: CircleAvatar(
                  backgroundColor: customStyles.white,
                  radius: MediaQuery.of(context).size.height < 600 ? 80 : 100,
                  child: Text("Logo", style: TextStyle(color: customStyles.mainColor, fontSize: 50),),
                ),
              ),
            )
          ],
        ),
    );
  }

  Widget demonstrador(int length, IconData icon, BuildContext context){
    return Column(
      children: <Widget>[
<<<<<<< HEAD
        Icon( icon, size: MediaQuery.of(context).size.height < 600 ? 70 : 90, color: customStyles.mainColor,),
        Text("00", style: TextStyle(fontSize: MediaQuery.of(context).size.width < 600 ? 45 : 65, fontWeight: FontWeight.w500, color: customStyles.mainColor),)
=======
        Icon( icon, size: MediaQuery.of(context).size.width < 600 ? 70 : 90, color: customStyles.mainColor,),
        Text(length.toString(), style: TextStyle(fontSize: MediaQuery.of(context).size.width < 600 ? 45 : 65, fontWeight: FontWeight.w500, color: customStyles.mainColor),)
>>>>>>> 50f7d4e5fe438ba3f5cc3e2ea09ef4ddaa44f7a7
      ],
    );
  }


}

