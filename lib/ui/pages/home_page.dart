part of 'pages.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<Category> categories = Category.generatedCategory();
  List<Product> products = Product.generatedProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBackground,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: defaultMargin,
                      left: defaultMargin,
                      right: defaultMargin),
                  child: CustomHeader(
                      title: 'Hello Dedek',
                      subTitle: '@dedekyansyah,',
                      img: SvgPicture.asset('assets/images/profile_null.svg')),
                ),
                SizedBox(
                  height: 12.w,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          CardCategory(category: categories[index]),
                      separatorBuilder: (_, index) => const SizedBox(
                            width: 15,
                          ),
                      itemCount: categories.length),
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Products',
                        style: whiteStyle.copyWith(
                            fontSize: 22, fontWeight: semibold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: defaultMargin / 2),
                SizedBox(
                  height: 27.h,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          CardProduct(product: products[index]),
                      separatorBuilder: (_, index) => const SizedBox(
                            width: 15,
                          ),
                      itemCount: products.length),
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New Arrivals',
                        style: whiteStyle.copyWith(
                            fontSize: 22, fontWeight: semibold),
                      )
                    ],
                  ),
                ),
                SizedBox(height: defaultMargin / 2),
                SizedBox(
                  // width: 27.w,
                  child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          CardArrival(product: products[index]),
                      separatorBuilder: (_, index) => const SizedBox(
                            height: 15,
                          ),
                      itemCount: products.length),
                ),
                SizedBox(
                  height: defaultMargin * 2,
                )
              ],
            ),
          ),
        ));
  }
}
