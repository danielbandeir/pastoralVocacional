import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:pastoravocacional/blocs/home_bloc.dart';

class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = BlocProvider.getBloc<HomeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("logo"),
      ),
      body: PageView(
        controller: bloc.pageController,
        onPageChanged: bloc.changeIndex,
        children: <Widget>[
          Container(color: Colors.green,),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
        ],
      ),
      bottomNavigationBar: StreamBuilder<int>(
        stream: bloc.index,
        initialData: 0,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                title: Text("Dashboard"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.event),
                title: Text("Eventos"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("Pessoas"),
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