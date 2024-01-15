// ignore_for_file: non_constant_identifier_names, avoid_print

import 'book.dart';

void main(List<String> args) {
  // dynamic dall = 'hello flutter!';
  // print(dall);
  // dall = 2;

  // var vall = 'aaa';
  // print(vall);
  // // vall = 2;

  // List<String> name = ['tu', 'ngan', 'thinh', 'thanh', 'duyet'];
  // // print(name[0]);
  // for (var mn in name) {
  //   print(mn);
  // }

  // Map<String, int> obj = {'tu': 42, 'thinh': 34};
  // // print(obj.keys);
  // obj.forEach((key, value) {
  //   print(key + ' ' + value.toString());
  // });

  // void showHello1(String name, int age) {
  //   if (age > 40) {
  //     print('Chào anh ' + name);
  //   } else {
  //     print('Chào em ' + name);
  //   }
  // }

  // void showHello2({String name = 'tu', int age = 42}) {
  //   if (age > 40) {
  //     print('Chào anh ' + name);
  //   } else {
  //     print('Chào em ' + name);
  //   }
  // }

  // showHello2(name: 'dat', age: 30);

  // var MyBook = Book(name: 'Sport', year: 2000);
  // var MyBook = Book(name: 'Sport');
  // print(MyBook.name);
  // print(MyBook.year);

  // var MyBook = Book('IT', 2023);
  //MyBook.showHello();
  // print(MyBook.getName);
  // MyBook.setName = 'Flutter';
  // print(MyBook.getName);
  // print(MyBook.year);

  // var YourBook = Book.bookNew('Model');
  // print(YourBook.getName);
  // print(YourBook.year);
  // // print(Book.age);
  // Book.showHello();

  var YourBook = BookFunny('ngụ ngôn', 2020);
  print(YourBook.name);
  BookFunny.showBookFunnyHello();
}
