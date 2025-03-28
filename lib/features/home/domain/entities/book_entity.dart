class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? author;
  final num? price;
  final num? rate;

  BookEntity(
      { required this.bookId,
       required this.image,
       required this.title,
       required this.author,
       required this.price,
       required this.rate});
}
