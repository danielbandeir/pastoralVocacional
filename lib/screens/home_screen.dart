import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/blocs/home_bloc.dart';
import 'package:pastoravocacional/CustomStyles/customStyles.dart';
import 'package:pastoravocacional/screens/dashboard_screen.dart';
class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = BlocProvider.getBloc<HomeBloc>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customStyles.mainColor,
        centerTitle: true,
        title: Text("DashBoard", style: TextStyle(fontSize: 20, color: customStyles.white),),
        leading: IconButton(icon: Icon(Icons.subject, color: customStyles.white,), onPressed: null),
      ),
      body: PageView(
        controller: bloc.pageController,
        onPageChanged: bloc.changeIndex,
        children: <Widget>[
          DashBoardScreen(),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
        ],
      ),
      bottomNavigationBar: StreamBuilder<int>(
        stream: bloc.index,
        initialData: 0,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            backgroundColor: customStyles.mainColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard, color: customStyles.white,),
                title: Text("Dashboard", style: TextStyle(color: customStyles.white),),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.event, color: customStyles.white,),
                title: Text("Eventos", style: TextStyle(color: customStyles.white)),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: customStyles.white,),
                title: Text("Pessoas", style: TextStyle(color: customStyles.white)),
              ),
            ],
            currentIndex: snapshot.data,
            onTap: bloc.changeIndex,
          );
        }
      ),
    );
  }
}