import 'package:hive/hive.dart';

part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final String? image;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final int pageCount;

  BookEntity({
    required this.bookId,
    required this.image,
    required this.price,
    required this.pageCount,
    required this.title,
    required this.authorName,
  });
}
