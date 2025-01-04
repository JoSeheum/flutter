import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


class LTS{
  final int? data1;
  final int? data2;
  const LTS(int val1, int val2) : data1 = val1, data2 = val2;
}
main()
{
  var lts =const LTS(1,2);
  var lts1 =const LTS(1,2);

  print(lts == lts1);
  print(lts.data1);

}