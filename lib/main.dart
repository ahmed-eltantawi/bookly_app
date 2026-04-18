import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(const BooklyApp());
  Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox(kBestsellerBox);
  await Hive.openBox(kNewsBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
    );
  }
}
