import 'package:bookly_ca/core/helper/assets.dart';
import 'package:bookly_ca/core/helper/styles.dart';
import 'package:flutter/material.dart';

import 'book_page.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Image.asset(AssetsData.test),
        ),
        const SizedBox(height: 43),
        Text(
          'Harry Potter and the Goblet of Fire',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            'J.K. Rowling',
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
