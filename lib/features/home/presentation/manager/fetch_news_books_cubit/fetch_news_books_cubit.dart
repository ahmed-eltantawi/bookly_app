import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_news_books_state.dart';

class FetchNewsBooksCubit extends Cubit<FetchNewsBooksState> {
  FetchNewsBooksCubit() : super(FetchNewsBooksInitial());
}
