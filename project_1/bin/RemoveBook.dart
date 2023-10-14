import 'dart:io';
import 'AddBook.dart';

RemoveBook() {
  print("enter id of the book to DELETE : ");
  var input = stdin.readLineSync();
  
  // find id and delete from libary
  for (Map query in libary) {
    if (query.containsValue(input)) {
      libary.removeWhere((e) => e['id'] == '$input');
      print("The book has been deleted (^_^)");
      
      return libary;
    } 
  }
  if(!libary.contains(input)){
      print("wrong ID  ");
      
    }
}
