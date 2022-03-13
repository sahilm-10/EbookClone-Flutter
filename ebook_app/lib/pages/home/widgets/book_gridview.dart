import 'package:ebook_app/models/book.dart';
import 'package:ebook_app/pages/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class BookGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  BookGridView(
    this.selected,
    this.pageController,
    this.callback,
    {Key? key}) : super(key: key);
    final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
        StaggeredGridView.countBuilder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,
          itemCount: bookList.length,

          itemBuilder: (_,index) => BookItem(bookList[index]), 
          staggeredTileBuilder: (_) => const StaggeredTile.fit(2)),
          Container(),
        ],
      ),
    );
  }
}