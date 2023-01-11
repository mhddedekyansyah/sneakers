// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class CategoryModel extends Equatable {
  final int id;
  final String name;
  final bool selected;

  const CategoryModel({
    required this.id,
    required this.name,
    required this.selected,
  });

  static generatedCategory() {
    return const [
      CategoryModel(id: 1, name: 'All Shoes', selected: true),
      CategoryModel(id: 2, name: 'Running', selected: false),
      CategoryModel(id: 3, name: 'Training', selected: false),
      CategoryModel(id: 4, name: 'Basketball', selected: false),
      CategoryModel(id: 5, name: 'Hiking', selected: false),
    ];
  }

  @override
  List<Object> get props => [id, name, selected];

  CategoryModel copyWith({
    int? id,
    String? name,
    bool? selected,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      selected: selected ?? this.selected,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'selected': selected,
    };
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
      selected: json['selected'] as bool,
    );
  }
}
