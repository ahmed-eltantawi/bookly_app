part of 'fetch_best_seller_books_cubit.dart';

sealed class FetchBestSellerBooksState {}

final class FetchBestSellerBooksInitial extends FetchBestSellerBooksState {}

final class FetchBestSellerBooksSuccuss extends FetchBestSellerBooksState {
  final List<BookEntity> books;

  FetchBestSellerBooksSuccuss({required this.books});
}

final class FetchBestSellerBooksLoading extends FetchBestSellerBooksState {}

final class FetchBestSellerBooksFailure extends FetchBestSellerBooksState {
  final String message;

  FetchBestSellerBooksFailure({required this.message});
}
