// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final bool selected;

  const Category({
    required this.id,
    required this.name,
    required this.selected,
  });

  static generatedCategory() {
    return const [
      Category(id: 1, name: 'All Shoes', selected: true),
      Category(id: 2, name: 'Running', selected: false),
      Category(id: 3, name: 'Training', selected: false),
      Category(id: 4, name: 'Basketball', selected: false),
      Category(id: 5, name: 'Hiking', selected: false),
    ];
  }

  @override
  List<Object?> get props => [id, name, selected];
}
