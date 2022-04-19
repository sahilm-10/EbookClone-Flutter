import 'package:ebook_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/models/book.dart';
class BookCover extends StatelessWidget {
  final Book book;
  const BookCover(this.book,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical:10),
      padding: const EdgeInsets.only(left: 20),
      height: 250,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left:25),
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              color: Colors.grey[200],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              child:Image.asset(book.imgUrl,
              fit: BoxFit.cover,
              )
            ),
          ),
          Positioned(
            left: 90,
            bottom: 20,
            child:Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: Colors.blue,
              ),
            
            child: const Icon(
              Icons.info_outline,
              color: Colors.white,
              size: 25,
            ),
            )
          ),
          Positioned(
            left: 200,
            bottom: 20,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kFont,
              ),
              child: Row(
                children: [
                const Icon(Icons.play_arrow_outlined,
                color: Colors.white,
                size: 25,
              ),
              Text('Audio Book',
              style: TextStyle(
                color: Colors.white
              ),
              )
                ],
              ),
            ),
  
          )
        ],
        
      ),
    );
  }
}