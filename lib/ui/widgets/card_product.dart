part of 'widgets.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40.w,
        // height: 2.h,
        decoration: BoxDecoration(
          color: textWhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                widget.product.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.category.name,
                    style: grayStyle.copyWith(fontSize: 12.sp),
                  ),
                  Text(
                    widget.product.name,
                    style: blackStyle.copyWith(
                        fontWeight: semibold, fontSize: 18.sp),
                  ),
                  Text(
                    '${widget.product.price}',
                    style: blueStyle.copyWith(),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
