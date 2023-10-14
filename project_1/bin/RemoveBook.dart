import 'dart:io';
import 'package:test/test.dart';

import 'AddBook.dart';

RemoveBook({required List<Map> listOfMap}) {
  print("enter id of the book to DELETE : ");
  var input = stdin.readLineSync();
  listOfMap = libary;
  // find id and delete from libary
  for (Map query in libary) {
    if (query.containsValue(input)) {
      listOfMap.removeWhere((e) => e['id'] == '$input');
      print("The book has been deleted (^_^)");
      libary = listOfMap;
      return libary;
    } else {
      print("wrong ID  ");
      break;
    }
  }
}
