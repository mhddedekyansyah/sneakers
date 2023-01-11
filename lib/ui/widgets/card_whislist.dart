part of 'widgets.dart';

class WishlistCard extends StatelessWidget {
  final ProductModel? product;
  WishlistCard({this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.only(
        top: 10,
        left: 12,
        bottom: 14,
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor2,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/image_shoes.png',
              width: 60,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product?.name ?? 'Terrex Urban Low',
                  style: whiteStyle.copyWith(
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  '\$${product?.price ?? '143,98'}',
                  style: blueStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/ic_whislist_blue.svg',
              width: 34,
            ),
          ),
        ],
      ),
    );
  }
}
