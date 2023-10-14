import 'dart:io';
import 'AddBook.dart';

UpdateBook() {
  // Ask the user which book you want to edit
  print("enter Id the book to edit data : ");
  var input = stdin.readLineSync()!;
  // Search for the book if found ask which value want
  for (Map map in libary) {
    if (map.containsValue(input)) {
      print("What you want modify: name | author | price |category| left ");
      // enter new value
      String? modify = stdin.readLineSync();
      if (map.containsKey(modify)) {
        print("new value please: ");
        String? newValue = stdin.readLineSync();
        map[modify] = newValue;
        print("The book has been modified");
        print(map);
        var empty = stdin.readLineSync();
      }
    }
  }
}
