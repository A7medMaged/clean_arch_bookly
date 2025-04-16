import 'package:dartz/dartz.dart';

import 'package:bookly_ca/core/errors/failure.dart';
import 'package:bookly_ca/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
    Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks();
    Future<Either<Failure,List<BookEntity>>> fetchNewestBooks();
}