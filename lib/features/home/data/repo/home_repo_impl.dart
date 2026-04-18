import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  @override
  Future<Either<Failure, List<BookEntity>>> fetchBestSellerBooks() async {
    List<BookEntity> books = homeLocalDataSource.fetchBestSellerBooks();
    try {
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchBestSellerBooks();
      return right(books);
    } catch (e) {
      return left(NetWorkFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks() async {
    List<BookEntity> books = homeLocalDataSource.fetchNewsBooks();
    try {
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewsBooks();
      return right(books);
    } catch (e) {
      return left(NetWorkFailure());
    }
  }

  HomeRepoImpl({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
  });
}
