class Product {
  final String name;
  final int quantity;
  final num price;
  final String imgeurl;

  const Product({
    required this.name,
    required this.imgeurl,
    required this.price,
    required this.quantity,
  });
}

const products = [
  Product(
      name: 'tomato',
      imgeurl:
          'https://pbs.twimg.com/profile_images/415606262315769856/ccZi45Tv_400x400.jpeg',
      price: 80,
      quantity: 40),
  Product(
      name: 'potato',
      imgeurl:
          'https://images.thedailystar.net/sites/default/files/customphp/photo/2010/06/05/2010-06-05__h06.jpg',
      price: 30,
      quantity: 50),
  Product(
      name: 'tomato',
      imgeurl:
          'https://pbs.twimg.com/profile_images/415606262315769856/ccZi45Tv_400x400.jpeg',
      price: 80,
      quantity: 40),
  Product(
      name: 'potato',
      imgeurl:
          'https://images.thedailystar.net/sites/default/files/customphp/photo/2010/06/05/2010-06-05__h06.jpg',
      price: 30,
      quantity: 50),
  Product(
      name: 'tomato',
      imgeurl:
          'https://pbs.twimg.com/profile_images/415606262315769856/ccZi45Tv_400x400.jpeg',
      price: 80,
      quantity: 40),
  Product(
      name: 'potato',
      imgeurl:
          'https://images.thedailystar.net/sites/default/files/customphp/photo/2010/06/05/2010-06-05__h06.jpg',
      price: 30,
      quantity: 50),
];
