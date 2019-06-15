import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc extends BlocBase {
  PageController pageController = PageController();

  BehaviorSubject<int> _index = BehaviorSubject.seeded(0);

  Observable<int> get index => _index.stream;

  void changeIndex(int index) {
    _index.sink.add(index);
    pageController.animateToPage(index,
        curve: Curves.bounceIn, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    _index.close();
    super.dispose();
  }
}
