import 'package:bookly_app/features/search_book/presentation/views/widgets/search_book_view_body.dart';
import 'package:bookly_app/features/search_book/presentation/views/widgets/search_view_app_bar.dart';
import 'package:flutter/material.dart';

class SearchBookView extends StatelessWidget {
  const SearchBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: SearchViewAppBar(), body: SearchBookViewBody());
  }
}
