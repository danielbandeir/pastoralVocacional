import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {

  List<String> titles = ['Dashboard', 'Eventos', 'Pessoas'];

  PageController pageController = PageController(
    initialPage: 0
  );

  BehaviorSubject<int> _index = BehaviorSubject();

  Observable<int> get index => _index.stream;

  void changeIndex(int index) {
    _index.sink.add(index);
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    _index.close();
    super.dispose();
  }
}
