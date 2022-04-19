import 'package:ebook_app/constants/colors.dart';
import 'package:ebook_app/models/book.dart';
import 'package:flutter/material.dart';
import 'package:ebook_app/pages/home/home.dart';
import 'package:ebook_app/Screens/HomeScreens/featured.dart';
import 'package:ebook_app/models/book.dart';
// void main() => runApp(Featured());

class Featured extends StatelessWidget {
  
// This widget is the root
// of your application.
@override
Widget build(BuildContext context) {
	return new MaterialApp(
	title: "Books",
	theme: new ThemeData(
		primarySwatch: Colors.blue
	),
	debugShowCheckedModeBanner: false,
	home: new ListViewBuilder()
	);
}
}
class ListViewBuilder extends StatelessWidget {
  // final Book books;
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		leading: IconButton(
      onPressed: (){},
      icon: const Icon(Icons.menu_rounded,
      color: kFont,),
    ),
    title: const Text(
      "All Books",
      style: TextStyle(
        color: kFont,
        fontSize: 18,
      ),
    ),
    centerTitle: true,
	),
	body: ListView.builder(padding:EdgeInsets.only(top: 25,right: 25,left: 25),physics:BouncingScrollPhysics(), shrinkWrap: true , itemCount:6,itemBuilder: (context,index){
    return GestureDetector(
      onTap: (){
        print("Item Tapped");
      },
      child: Container(
      margin: EdgeInsets.only(bottom: 19),
      height: 81,
      width: MediaQuery.of(context).size.width - 50,
      color: Colors.white,
      

      child: Row(
        children: <Widget>[
          Container(
            height: 81,
            width: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage('assests/Images/book$index.jpeg')),
              color: kFont,
              
            ),
          ),
          
          SizedBox(width: 21,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Book$index ",),
              // TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              SizedBox(height: 5,),
              Text("Author:Random"),
              SizedBox(height: 5,),
              Text("Rs.200"),
              
               
              
            ],
          
            
            
            
          )
          
        ],
      ),
    ),
    
    );
    
  }
  )
    

		);
	
}
}







