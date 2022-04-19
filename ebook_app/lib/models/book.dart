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
        'Melhua',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book1.jpeg',
        4.8,
        894,
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        220.0,
      )
      ,
            Book(
        'New Day',
        'This is the way',
        'Studio',
        DateTime(2019,3,23),
        'assests/Images/book2.jpeg',
        4.8,
        894,
        'I passed the first quater in the schoolLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
        'I passed the first Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrs standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. in the school',
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
        'I passed the Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. quater in the school',
        220.0,
      )
      
      ,
            Book(
        'Fantastic Beasts',
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