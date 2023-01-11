// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'models.dart';

class ProductModel extends Equatable {
  final int? id;
  final String? name;
  final CategoryModel? category;
  final double? price;
  final List<String>? imgUrl;

  const ProductModel({
    this.id,
    this.name,
    this.category,
    this.price,
    this.imgUrl,
  });

  static generatedProducts() {
    return const [
      ProductModel(
          id: 1,
          name: 'Ultra 4D 5 Shoes',
          category: CategoryModel(id: 1, name: 'Running', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes.png',
            'assets/images/image_shoes.png',
            'assets/images/image_shoes.png',
          ]),
      ProductModel(
          id: 2,
          name: 'SL 20 SHOES',
          category: CategoryModel(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: ['assets/images/image_shoes2.png']),
      ProductModel(
          id: 3,
          name: 'Ultra 4D 5 Shoes',
          category: CategoryModel(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes3.png',
            'assets/images/image_shoes3.png'
          ]),
      ProductModel(
          id: 4,
          name: 'Ultraboots 20 Shoes',
          category: CategoryModel(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: [
            'assets/images/image_shoes4.png',
            'assets/images/image_shoes4.png'
          ]),
      ProductModel(
          id: 5,
          name: 'LEGO® SPORT SHOES',
          category: CategoryModel(id: 1, name: 'category', selected: false),
          price: 76.5,
          imgUrl: ['assets/images/image_shoes5.png']),
    ];
  }

  @override
  List<Object?> get props {
    return [
      id,
      name,
      category,
      price,
      imgUrl,
    ];
  }

  ProductModel copyWith({
    int? id,
    String? name,
    CategoryModel? category,
    double? price,
    List<String>? imgUrl,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'category': category?.toJson(),
      'price': price,
      'imgUrl': imgUrl,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] != null ? json['id'] as int : null,
      name: json['name'] != null ? json['name'] as String : null,
      category: json['category'] != null
          ? CategoryModel.fromJson(json['category'] as Map<String, dynamic>)
          : null,
      price: json['price'] != null ? json['price'] as double : null,
      imgUrl: json['imgUrl'] != null
          ? List<String>.from((json['imgUrl'] as List<String>))
          : null,
    );
  }
}

class UninitializedProductModel extends ProductModel {}
