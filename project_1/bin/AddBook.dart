import 'dart:io';
import 'DataBook.dart';

List<Map> libary = book;

addBook(List<Map> listOfMap) {
  // ask user to add details the book
  print("Enter the book ID number:");
  var id = stdin.readLineSync();
  print("enter the name of the book:");
  var name = stdin.readLineSync();
  print("Enter the name of the book author:");
  var author = stdin.readLineSync();
  print("enter price of the book:");
  dynamic price = int.parse(stdin.readLineSync().toString());
  print("enter the category of the book:");
  var category = stdin.readLineSync();
  print("Enter the number of copies of the book:");
  dynamic left = int.parse(stdin.readLineSync().toString());
  // add details the book to libary
  listOfMap.add({
    "id": id,
    "name": name,
    "author": author,
    "price": price,
    "category": category,
    "left": left
  });
  // Give user options to go home page or add another book
  print("Do you want add another book:\n Y or N?");
  var confirm = stdin.readLineSync()!.toLowerCase();
  if (confirm == 'y') {
    addBook(libary);
  }
  return listOfMap;
}
