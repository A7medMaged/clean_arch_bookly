class BookEntity {
  final String bookId;
  final String title;
  final String? authorName;
  final String? image;
  final num? price;
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
