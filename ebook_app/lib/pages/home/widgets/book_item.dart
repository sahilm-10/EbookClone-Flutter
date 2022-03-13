
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';


class BookItem extends StatelessWidget {
final Book book;
  const BookItem(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: book.height as double,
      decoration: BoxDecoration(
        image : DecorationImage(
          image: AssetImage(book.imgUrl),
          fit: BoxFit.cover,
        )
      ),
     
    );
  }
}