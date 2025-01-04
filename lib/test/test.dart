import 'package:flutter/material.dart';

class A{
  static int data1 = 3;
  int data2 = 4;
  some()
  {
    return data1 - data2;
  }
}

main()
{
  A a1 =A();
  A.data1 =10;
  print("${a1.some()}");
}