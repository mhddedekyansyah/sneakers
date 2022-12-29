// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class Product extends Equatable {
  final int id;
  final String name;
  final Category category;
  final double price;
  final String imgUrl;

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
          name: 'name',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: 'assets/images/image_shoes.png'),
      Product(
          id: 1,
          name: 'name',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: 'assets/images/image_shoes2.png'),
      Product(
          id: 1,
          name: 'name',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: 'assets/images/image_shoes3.png'),
      Product(
          id: 1,
          name: 'name',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: 'assets/images/image_shoes4.png'),
      Product(
          id: 1,
          name: 'name',
          category: Category(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: 'assets/images/image_shoes5.png'),
    ];
  }

  @override
  List<Object?> get props => [id, name, category, price, imgUrl];
}
