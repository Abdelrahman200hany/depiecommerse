class ProductItemModel {
  final String image, title, des;
  final int price;

  ProductItemModel({
    required this.image,
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
    ),
    ProductItemModel(
      des: 'white pasta',
      image: 'assets/images/pasta.jpeg',
      title: 'pasta',
      price: 110,
    ),
    ProductItemModel(
      des: 'classic burger',
      image: 'assets/images/burger.jpg',
      title: 'burger',
      price: 300,
    ),
    ProductItemModel(
      des: 'gril tonna',
      image: 'assets/images/fish2.jpeg',
      title: 'fish',
      price: 150,
    ),
    ProductItemModel(
      des: 'well done ',
      image: 'assets/images/meat.jpeg',
      title: 'meat',
      price: 400,
    ),
  ];
}
