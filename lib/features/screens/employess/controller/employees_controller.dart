import 'package:flutter/material.dart';

class EmployeesController extends ChangeNotifier {
  bool startWork=false;
  changeStatus(value){
startWork= value;
notifyListeners();
  }
  int count=0;
  changeCount(){
    count++;
    notifyListeners();
  }
}