part of 'widgets.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33.w,
      // height: 2.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: widget.category.selected ? primary : null,
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(color: widget.category.selected ? primary : textGray),
      ),
      child: Text(
        widget.category.name,
        style: whiteStyle.copyWith(
            color: widget.category.selected ? textWhite : textGray),
      ),
    );
  }
}
