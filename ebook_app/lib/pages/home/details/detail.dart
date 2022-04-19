import 'package:ebook_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/home/details/widgets/book_detail.dart';
import 'package:ebook_app/pages/home/details/widgets/book_cover.dart';
import 'package:ebook_app/pages/home/details/widgets/book_review.dart';




class DetailPage extends StatelessWidget {
  final Book book;
  const DetailPage(this.book, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookDetail(book),
            BookCover(book),
            BookReview(book),
          ],
        ),
      ) 
    );
  }
}

  AppBar _buildAppBar(BuildContext context){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: ()=>Navigator.of(context).pop(),
        icon: const Icon(Icons.arrow_back_ios),
        color: kFont,
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const Icon(Icons.more_horiz_outlined),
          color: kFont,
        )
      ],
    );
  }
