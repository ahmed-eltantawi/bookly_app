import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:hive/hive.dart';

void saveBooksData({required List<BookEntity> books, required String boxName}) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
