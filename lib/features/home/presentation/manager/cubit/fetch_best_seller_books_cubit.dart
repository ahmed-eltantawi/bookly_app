import 'package:bloc/bloc.dart';

part 'fetch_best_seller_books_state.dart';

class FetchBestSellerBooksCubit extends Cubit<FetchBestSellerBooksState> {
  FetchBestSellerBooksCubit() : super(FetchBestSellerBooksInitial());
}
