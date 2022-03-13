class Book{
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  num height;
  Book(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.ratings,
    this.review,
    this.height
  );
  static List<Book> generateBooks(){
    return [
      Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book1.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      ),
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book1.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book2.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book3.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book4.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book4.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book5.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
      
      ,
            Book(
        'history',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book6.jpeg',
        4.8,
        894,
        'I passed the first quater in the school',
        220.0,
      )
    ];
  }
}