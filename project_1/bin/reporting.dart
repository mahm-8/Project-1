//defind varibel
import 'dart:io';

List purcheses = ["Total books $totalSoldBook","Total price $totalPraice"];
dynamic totalPraice = 0;
dynamic totalSoldBook = 0;
reporting() {
  // printed like a list
  for (var element in purcheses) {
    print(element);
  }
  // for not show home page
  var empty = stdin.readLineSync();
}
