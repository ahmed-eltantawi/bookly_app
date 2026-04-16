import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchNewsBooks();
  Future<List<BookEntity>> fetchBestSellerBooks();
}

class HomeRemoteDataSourceImpletion extends HomeRemoteDataSource {
  @override
  final ApiServices apiServices;

  HomeRemoteDataSourceImpletion({required this.apiServices});
  @override
  Future<List<BookEntity>> fetchBestSellerBooks() async {
    var data = await apiServices.get(endPoint: "volumes?q=programming");
    return getBooksList(data);
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() {
    // TODO: implement fetchNewsBooks
    throw UnimplementedError();
  }
}
