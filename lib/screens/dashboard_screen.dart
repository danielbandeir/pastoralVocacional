import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:pastoravocacional/blocs/dashboard_bloc.dart';
import 'package:rxdart/transformers.dart';

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
                  height: MediaQuery.of(context).size.height * 0.27,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  lengthWidget(bloc.getLengthPeople(),
                                      Icons.person, context),
                                  lengthWidget(bloc.getLengthEvents(),
                                      Icons.event, context)
                                ],
                              ))
                        ],
                      )))
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
                child: Text(
                  "Logo",
                  style: TextStyle(color: customStyles.mainColor, fontSize: 50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget lengthWidget(Future<int> future, IconData icon, BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: MediaQuery.of(context).size.height < 600 ? 70 : 90,
            color: customStyles.mainColor,
          ),
          FutureBuilder<int>(
              future: future,
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? Text(
                        snapshot.data.toString(),
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width < 600
                                ? 45
                                : 65,
                            fontWeight: FontWeight.w500,
                            color: customStyles.mainColor),
                      )
                    : Center(child: CircularProgressIndicator());
              })
        ],
      ),
    );
  }
}
