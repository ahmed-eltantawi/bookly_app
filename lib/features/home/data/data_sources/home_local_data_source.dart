import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchNewsBooks();
  List<BookEntity> fetchBestSellerBooks();
}
