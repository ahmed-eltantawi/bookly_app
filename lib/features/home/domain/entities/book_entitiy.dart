import "package:hive/hive.dart";
part 'book_entitiy.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String author;
  @HiveField(3)
  final String title;
  @HiveField(4)
  final num rate;
  @HiveField(5)
  final num price;

  BookEntity({
    required this.image,
    required this.author,
    required this.title,
    required this.rate,
    required this.price,
    required this.bookId,
  });
}
