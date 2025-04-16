import 'package:bookly_ca/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly_ca/core/errors/failure.dart';
import 'package:bookly_ca/features/home/domain/entities/book_entity.dart';
import 'package:bookly_ca/features/home/domain/repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
