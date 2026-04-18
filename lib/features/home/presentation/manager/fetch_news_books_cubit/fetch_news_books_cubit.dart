import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_news_books.dart';

part 'fetch_news_books_state.dart';

class FetchNewsBooksCubit extends Cubit<FetchNewsBooksState> {
  FetchNewsBooksCubit(this.fetchNewsBooksUseCase)
    : super(FetchNewsBooksInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  Future<void> fetchBestSellerBooks() async {
    emit(FetchNewsBooksLoading());
    var result = await fetchNewsBooksUseCase.call();
    result.fold(
      (l) {
        emit(FetchNewsBooksFailure(errorMassage: l.errorMessage));
      },
      (books) {
        emit(FetchNewsBooksSuccuss(books: books));
      },
    );
  }
}
