// ignore: unused_import
import 'package:flutter/foundation.dart';
// ignore: unused_import
import 'package:flutter/material.dart';

void main() {
  int x = 11;
  int y = 0;
  // ignore: unused_local_variable
  int res;
  try {
    res = x ~/ y;
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    if (kDebugMode) {
      print('Cannot divide by zero');
    }
  }
  exception();
  exceptionWithFinaly();
}

// Try catch with exception
exception() {
  int x = 10;
  int y = 0;
  // ignore: unused_local_variable
  int res;
  try {
    res = x ~/ y;
  } catch (e) {
    // ignore: avoid_print
    print(e);
  }
}

// With finaly
exceptionWithFinaly() {
  int x = 9;
  int y = 0;
  // ignore: unused_local_variable
  int res;
  try {
    res = x ~/ y;
    // ignore: deprecated_member_use, empty_catches
  } on IntegerDivisionByZeroException {
  } finally {}
}
