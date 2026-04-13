import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchBestSellerBooks();
  Future<List<BookEntity>> fetchFeaturedBooks();
}
