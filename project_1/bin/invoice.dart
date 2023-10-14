import 'dart:io';
import 'buyBook.dart';
printInvoice() {
  print("Thanks you for your visit:");
  var totalprice = buying.last;
  // prints all purchases except the final price
  for (var i = 0; i < buying.length - 1; i++) {
    print(buying[i]);
  }
  print("total price: $totalprice");
  // for not show home page
  var empty = stdin.readLineSync();
}
