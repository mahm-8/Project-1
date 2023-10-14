import 'dart:io';
import 'AddBook.dart';
import 'ShowBook.dart';
import 'invoice.dart';
import 'RemoveBook.dart';
import 'UpdateBook.dart';
import 'buyBook.dart';
import 'queryBook.dart';
import 'reporting.dart';

void main() {
  ShowBook showBook = ShowBook(libary);
  
  bool run = true;
  while (run) {
    print(
        "For books press: 0 \nFor Search press: 1\nFor add book press:  2\nFor delete book press: 3\nFor update book press: 4\nFor buying book press: 5\nFor invoice press: 6\nFor reporting press: 7");
    String? input = stdin.readLineSync();
    switch (input) {
      case '0':
        showBook.printBook();
        break;
      case '1':
      SearchBook().queryBook();
        break;
      case '2':
        addBook(libary);
        break;
      case '3':
        RemoveBook();
        break;
      case '4':
    UpdateBook().updateBook();
        break;
      case '5':
        Buying(libary);
        break;
      case '6':
        printInvoice();
        break;
      case '7':
        reporting();
        break;
      default:
        print("Invalid input.");
        break;
    }
  }
}
