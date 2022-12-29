part of 'widgets.dart';

class CardArrival extends StatefulWidget {
  const CardArrival({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<CardArrival> createState() => _CardArrivalState();
}

class _CardArrivalState extends State<CardArrival> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 40.w,
        height: 12.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
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
                    style: grayStyle.copyWith(),
                  ),
                  Text(
                    widget.product.name,
                    style: whiteStyle.copyWith(
                        fontWeight: semibold, fontSize: 16.sp),
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
