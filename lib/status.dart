import 'dart:convert';

import 'package:flutter/material.dart';

class Status {
  List<int> state = new List(6);
  Status();
  String real;
  int counter=0;
  List<bool>booleans=[false,false,false,false,false,false];
  void splitData(String s){
    real=s;
    setCommas();
    counter=0;

     print(real);
   List<String>statuses=real.split(',');
    if(booleans[0])
      if(isNumeric(statuses[counter])&&booleans[0])
        state[0]=int.parse(statuses[counter++]);
      else state[0]=5;
    else state[0]=5;

    if(booleans[1])
      if(isNumeric(statuses[counter])&&booleans[1])
        state[1]=int.parse(statuses[counter++]);
      else state[1]=5;
    else state[1]=5;

    if(booleans[2])
      if(isNumeric(statuses[counter])&&booleans[2])
        state[2]=int.parse(statuses[counter++]);
      else state[2]=5;
    else state[2]=5;

    if(booleans[3])
      if(isNumeric(statuses[counter])&&booleans[3])
        state[3]=int.parse(statuses[counter++]);
      else state[3]=5;
    else state[3]=5;

    if(booleans[4])
      if(isNumeric(statuses[counter])&&booleans[4])
        state[4]=int.parse(statuses[counter++]);
      else state[4]=5;
    else state[4]=5;

   if(booleans[5])
     if(isNumeric(statuses[counter])&&booleans[5])
     state[5]=int.parse(statuses[counter++]);
     else state[5]=5;
   else state[5]=5;
counter=0;
  }
 @override
  String toString() {
    // TODO: implement toString
    return state[0].toString()+','+state[1].toString()+','+state[2].toString()
        +','+state[3].toString()+','+state[4].toString()+','+state[5].toString();
  }
  bool isNumeric(String s) {
    if(s == null) {
      return false;
    }
    return double.parse(s, (e) => null) != null;
  }

  void setCommas() {
    //print(real);

        if(real.contains('A')){
          booleans[0]=true;
          real=real.replaceAll(RegExp('A'), ',');}
        else
          booleans[0]=false;

        if(real.contains('B')){
          booleans[1]=true;
          real=real.replaceAll(RegExp('B'), ',');}
        else
          booleans[1]=false;

        if(real.contains('C')){
          booleans[2]=true;
          real=real.replaceAll(RegExp('C'), ',');}
        else
          booleans[2]=false;

        if(real.contains('D')){
          booleans[3]=true;
          real=real.replaceAll(RegExp('D'), ',');}
        else
          booleans[3]=false;

        if(real.contains('E')){
          booleans[4]=true;
          real=real.replaceAll(RegExp('E'), ',');}
        else
          booleans[4]=false;

        if(real.contains('F')){
          booleans[5]=true;
          real=real.replaceAll(RegExp('F'), ',');}
        else
          booleans[5]=false;

  }
}
