import 'dart:io';

class SearchBook {
  queryBook(List<Map> libary) {
    print("input name the book or the author");
    String? input = stdin.readLineSync();
    // used to found the required ID and printed
    for (Map query in libary) {
      if (query.containsValue(input)) {
        var idBook = query['id'];
        var nameBook = query['name'];
        var authorBook = query['author'];
        var priceBook = query['price'];
        var categoryBook = query['category'];
        var leftBook = query['left'];
        print(
            "the id: $idBook , the Book: $nameBook , the Author: $authorBook , price: $priceBook ,price: $categoryBook , left only: $leftBook");
        break;
      } else if (!query.containsValue(input)) {
        print("sorry we can't founded (-_-)");
        break;
      }
    }
    // Give user options to go home page or search in another book
    print("Do you want search for another book:\n Y or N?");
    var confirm = stdin.readLineSync()!.toLowerCase();
    if (confirm == 'y') {
      queryBook(libary);
    }
  }
}
