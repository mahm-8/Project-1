import 'dart:io';
import 'AddBook.dart';
class ShowBook {
  showBook() {
    // used for loop to Specify name and ID
    for (Map element in libary) {
      String nameBook = element['name'];
      String idBook = element['id'];
      print("idBook: $idBook, nameBook: $nameBook");
    }
    // for not show home page
  var empty = stdin.readLineSync();
  }
}
