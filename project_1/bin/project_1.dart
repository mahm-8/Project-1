import 'dart:io';
import 'AddBook.dart';
import 'Book.dart';
import 'invoice.dart';
import 'RemoveBook.dart';
import 'UpdateBook.dart';
import 'buyBook.dart';
import 'queryBook.dart';
import 'reporting.dart';

void main() {
  bool run = true;
  while (run) {
    print(
        "For books press: 0 \nFor Search press: 1\nFor add book press:  2\nFor delete book press: 3\nFor update book press: 4\nFor buying book press: 5\nFor invoice press: 6\nFor reporting press: 7");
    String? input = stdin.readLineSync();
    switch (input) {
      case '0':
        ShowBook().showBook();
        break;
      case '1':
        SearchBook().queryBook(libary);
        break;
      case '2':
        addBook(libary);
        break;
      case '3':
        RemoveBook(listOfMap: libary);
        break;
      case '4':
        UpdateBook();
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

  // Break out of the loop if the user wants to quit.
}

//   List<ShowBook> libary =[] ;
// for (Map element in book) {
//       String nameBook = element['name'];
//       String idBook = element['id'];
//       ShowBook product = ShowBook(idBook: idBook, nameBook: nameBook);
//       libary.add(product);}

// for (var element in libary) {
//   element.printBook();
//       }
//   List<Invoice> data = [];
//   Invoice report = Invoice(totalSoldBooks: 0, soldBooks: 0);
//   ShowBook showBook =ShowBook(nameBook: nameBook, idBook: idBook)
//   bool run = true;
//   while (run) {
//     print(
//         "For books press: 0 \nFor Search press: 1\nFor add book press:  2\nFor delete book press: 3\nFor update book press: 4\nFor buying book press: 5");
//     String? input = stdin.readLineSync();
//     if (input == "0") {
//     showBook;
//     } else if (input == "1") {
//       product.p;
  // }
  // else if (input == '2') {
  //   AddBook().addBook(listOfMap);
  // } else if (input == '3') {
  //   RemoveBook(listOfMap: libary);
  // } else if (input == '4') {
  //   UpdateBook();
  // } else if (input == '5') {
  //   Buying(libary);
  // } else if (input == '6') {
  //   report.printInvoice();
  // // }
  // }

