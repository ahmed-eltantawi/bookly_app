import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_best_seller_books_use_case.dart';

part 'fetch_best_seller_books_state.dart';

class FetchBestSellerBooksCubit extends Cubit<FetchBestSellerBooksState> {
  FetchBestSellerBooksCubit(this.fetchBestSellerBooksUseCase)
    : super(FetchBestSellerBooksInitial());
  final FetchBestSellerBooksUseCase fetchBestSellerBooksUseCase;
  Future<void> fetchBestSellerBooks() async {
    emit(FetchBestSellerBooksLoading());
    var result = await fetchBestSellerBooksUseCase.call();
    result.fold(
      (l) {
        emit(FetchBestSellerBooksFailure(message: l.errorMessage));
      },
      (books) {
        emit(FetchBestSellerBooksSuccuss(books: books));
      },
    );
  }
}
