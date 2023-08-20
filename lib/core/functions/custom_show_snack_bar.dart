import 'package:flutter/material.dart';

showSnack(context,String message){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('cannot launch'))
    );
}