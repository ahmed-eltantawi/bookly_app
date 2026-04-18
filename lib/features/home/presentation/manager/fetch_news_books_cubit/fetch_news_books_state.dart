part of 'fetch_news_books_cubit.dart';

sealed class FetchNewsBooksState {}

final class FetchNewsBooksInitial extends FetchNewsBooksState {}

final class FetchNewsBooksSuccuss extends FetchNewsBooksState {
  final List<BookEntity> books;

  FetchNewsBooksSuccuss({required this.books});
}

final class FetchNewsBooksLoading extends FetchNewsBooksState {}

final class FetchNewsBooksFailure extends FetchNewsBooksState {
  final String errorMassage;

  FetchNewsBooksFailure({required this.errorMassage});
}
