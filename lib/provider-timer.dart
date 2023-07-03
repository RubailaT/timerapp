import 'dart:async';

import 'package:flutter/material.dart';

class ProviderTimer extends ChangeNotifier{
  late Timer timer;
  double currentDuartion=1500;
  double selectedtime=1500;
  bool timerplaying=false;


  void start(){
    timerplaying=true;
    timer=Timer.periodic(Duration(seconds: 1), (timer){
      if(currentDuartion==0){
      timer.cancel();
      currentDuartion=0;
      }
      else{
        currentDuartion--;
        notifyListeners();

    }
  });
}
  void pause(){
  timer.cancel();
  timerplaying=false;
  notifyListeners();
  }
void selectTime(double seconds){
    selectedtime=seconds;
    currentDuartion=seconds;
    notifyListeners();
}
void reset(){
    timer.cancel();
    timerplaying=false;
    currentDuartion=0;
}

}