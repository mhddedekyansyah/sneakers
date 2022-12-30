// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final Category category;
  final double price;
  final List<String> imgUrl;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imgUrl,
  });

  static generatedProducts() {
    return const [
      Product(
          id: 1,
          name: 'Ultra 4D 5 Shoes',
          category: Category(id: 1, name: 'Running', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes.png',
            'assets/images/image_shoes.png',
            'assets/images/image_shoes.png',
          ]),
      Product(
          id: 2,
          name: 'SL 20 SHOES',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: ['assets/images/image_shoes2.png']),
      Product(
          id: 3,
          name: 'Ultra 4D 5 Shoes',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes3.png',
            'assets/images/image_shoes3.png'
          ]),
      Product(
          id: 4,
          name: 'Ultraboots 20 Shoes',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes4.png',
            'assets/images/image_shoes4.png'
          ]),
      Product(
          id: 5,
          name: 'LEGO® SPORT SHOES',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: ['assets/images/image_shoes5.png']),
    ];
  }

  @override
  List<Object?> get props => [id, name, category, price, imgUrl];
}
