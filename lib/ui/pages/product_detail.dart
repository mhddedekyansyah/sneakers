part of 'pages.dart';

class ProductDetail extends StatefulWidget {
  ProductDetail({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int currentIndex = 0;

  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: background1,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: const Icon(
                Icons.arrow_back_ios,
                color: defaultBackground,
              )),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: defaultMargin),
            child: SvgPicture.asset(
              'assets/icons/ic_cart_fill.svg',
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          widget.product.imgUrl.length > 1
              ? Column(
                  children: [
                    CarouselSlider(
                      items: widget.product.imgUrl
                          .map(
                            (e) => Container(
                              height: 50.h,
                              color: Colors.white,
                              child: Image.asset(
                                e,
                                fit: BoxFit.cover,
                                width: 100.w,
                                height: 310,
                              ),
                            ),
                          )
                          .toList(),
                      options: CarouselOptions(
                          viewportFraction: 1,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          }),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: widget.product.imgUrl.length,
                      effect: const ExpandingDotsEffect(
                        dotHeight: 10.0,
                        dotWidth: 10.0,
                        activeDotColor: primary,
                      ),
                    ),
                  ],
                )
              : Image.asset(widget.product.imgUrl.first),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 61.h,
              decoration: const BoxDecoration(
                color: defaultBackground,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                        right: defaultMargin),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.product.name,
                              style: whiteStyle.copyWith(
                                  fontSize: 14.sp, fontWeight: semibold),
                            ),
                            Text(
                              widget.product.category.name,
                              style: greyStyle.copyWith(fontSize: 10.sp),
                            )
                          ],
                        ),
                        SvgPicture.asset('assets/icons/ic_love.svg')
                      ],
                    ),
                  ),
                  Container(
                    height: 6.h,
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(defaultMargin),
                    decoration: BoxDecoration(
                      color: formFillColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price starts from',
                          style: whiteStyle.copyWith(fontSize: 10.sp),
                        ),
                        Text(
                          '\$${widget.product.price}',
                          style: blueStyle.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: defaultMargin / 2,
                        left: defaultMargin,
                        right: defaultMargin,
                        bottom: defaultMargin),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: whiteStyle.copyWith(
                                  fontSize: 12.sp, fontWeight: medium),
                            ),
                            SizedBox(
                              height: defaultMargin / 3,
                            ),
                            Text(
                              'Unpaved trails and mixed surfaces are easy\nwhen you have the traction and support you\nneed. Casual enough for the daily commute.',
                              style: grayStyle.copyWith(fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: defaultMargin),
                            child: Text(
                              'Fimiliar Shoes',
                              style: whiteStyle.copyWith(
                                  fontSize: 12.sp, fontWeight: medium),
                            ),
                          ),
                          SizedBox(
                            height: defaultMargin / 3,
                          ),
                          SizedBox(
                            height: 7.h,
                            child: ListView.separated(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => Container(
                                      width: 17.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            widget.product.imgUrl[index],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                separatorBuilder: (_, index) => const SizedBox(
                                      width: 10,
                                    ),
                                itemCount: widget.product.imgUrl.length),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: defaultMargin),
                      child: Row(
                        children: [
                          Container(
                            height: 6.h,
                            width: 6.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: textGray),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/ic_chat.svg',
                              height: 2.5.h,
                              width: 2.5.w,
                              color: primary,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: CustomButton(
                                onPressed: () {},
                                label: 'Add to Cart',
                                height: 6.h),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
