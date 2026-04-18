import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_best_seller_books_event.dart';
part 'fetch_best_seller_books_state.dart';

class FetchBestSellerBooksBloc extends Bloc<FetchBestSellerBooksEvent, FetchBestSellerBooksState> {
  FetchBestSellerBooksBloc() : super(FetchBestSellerBooksInitial()) {
    on<FetchBestSellerBooksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
