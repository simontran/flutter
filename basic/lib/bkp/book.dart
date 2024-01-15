// ignore_for_file: prefer_initializing_formals, avoid_print

class Book {
  // late String name;
  // late int year;
  // Book(name, year) {
  //   this.name = name;
  //   this.year = year;
  // }

  //Book(this.name, this.year);
  // String name;
  // int year;
  // Book({required this.name, required this.year});
  // Book({required this.name, this.year = 2000});

  // //final String _name;
  // late String _name;
  // late int year;
  // static int age = 5;
  // Book(this._name, this.year);

  late String name;
  late int year;
  Book({required this.name, required this.year});

  Book.bookNew(String name) {
    this.name = name;
    year = 2022;
  }

  String get getName => name;
  set setName(String name) {
    name = name;
  }

  static void showBookHello() {
    print('Xin chao');
  }
}

class BookFunny extends Book {
  String type;

  BookFunny(String name, int year, {this.type = 'Truyen vui'})
      : super(name: name, year: year);

  static void showBookFunnyHello() {
    Book.showBookHello();
    print('Xin chao BookFunny');
  }
}
