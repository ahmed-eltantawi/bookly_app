import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooks extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchNewsBooks({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homeRepo.fetchNewsBooks();
  }
}
