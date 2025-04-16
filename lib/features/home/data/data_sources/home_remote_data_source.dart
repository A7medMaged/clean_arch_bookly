import 'package:bookly_ca/core/services/api_services.dart';
import 'package:bookly_ca/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_ca/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiServices.get(
      endPoint: 'volumes?Filtering=free-ebook&q=programming',
    );

    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    throw UnimplementedError();
  }
}
