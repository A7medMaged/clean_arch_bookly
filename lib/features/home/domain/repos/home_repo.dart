import 'package:bookly_ca/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
    Future<List<BookEntity>> fetchFeaturedBooks();
    Future<List<BookEntity>> fetchNewestBooks();
}