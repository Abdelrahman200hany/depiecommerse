class ProductItemModel {
  final String image, title, des, uID;
  final int price;

  ProductItemModel({
    required this.image,
    required this.uID,
    required this.title,
    required this.des,
    required this.price,
  });

  static List<ProductItemModel> items = [
    ProductItemModel(
      des: 'seaRach pizza ',
      image: 'assets/images/pizza.jpeg',
      title: 'pizza',
      price: 233,
      uID: '1',
    ),
    ProductItemModel(
      des: 'white pasta',
      image: 'assets/images/pasta.jpeg',
      title: 'pasta',
      price: 110,
      uID: '2',
    ),
    ProductItemModel(
      des: 'classic burger',
      image: 'assets/images/burger.jpg',
      title: 'burger',
      price: 300,
      uID: '3',
    ),
    ProductItemModel(
      des: 'gril tonna',
      image: 'assets/images/fish2.jpeg',
      title: 'fish',
      price: 150,
      uID: '4',
    ),
    ProductItemModel(
      des: 'well done ',
      image: 'assets/images/meat.jpeg',
      title: 'meat',
      price: 400,
      uID: '5',
    ),
  ];
}
