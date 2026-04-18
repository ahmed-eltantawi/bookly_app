import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:bookly_app/features/home/domain/entities/book_entitiy.dart';
import 'package:bookly_app/features/home/domain/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchNewsBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([void param]) async {
    return await homeRepo.fetchNewsBooks();
  }
}
