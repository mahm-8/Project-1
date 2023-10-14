import 'dart:io';
import 'AddBook.dart';
import 'DataBook.dart';
import 'reporting.dart';

int totalcopies = 0;
int finaPrice = 0;
List<dynamic> buying = [];
int numCopies = 0;
Buying(List<Map> listOfMap) {
  print("enter Id the book to edit data : ");
  var input = stdin.readLineSync();
  for (Map map in libary) {
    if (map.containsValue(input)) {
      int price = map['price'];
      var name = map['name'];
      print(" number of copies : ");
      numCopies = int.parse(stdin.readLineSync()!);
      price = price * numCopies;
      totalcopies += numCopies;
      finaPrice += price;
      buying.add({'name': name, 'copis': numCopies, 'price': price});
      print("do you want add other books: Y or N ?");
      var confirmPurchese = stdin.readLineSync()!.toLowerCase();

      if (confirmPurchese == 'n') {
        buying.add(finaPrice);
        totalPraice += price;
        totalSoldBook += numCopies;
        purcheses.replaceRange(0, 2,
            ["Total Book Sold:  $totalSoldBook", "Total Price: $totalPraice "]);
        map['left'] -= numCopies;
        if (map['left'] == 0) {
          book.removeWhere((e) => e['left'] <= 0);
        }
        break;
      }
      if (confirmPurchese == 'y') {
        Buying(libary);
      }
    }
  }
}
