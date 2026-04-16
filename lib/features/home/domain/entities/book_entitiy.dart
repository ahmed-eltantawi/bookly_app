class BookEntity {
  final String bookId;
  final String image;
  final String author;
  final String title;
  final num rate;
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
