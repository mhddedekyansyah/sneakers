part of 'pages.dart';

class Cart extends StatelessWidget {
  Cart({Key? key, this.cart}) : super(key: key);
  List<CartModel>? cart;
  @override
  Widget build(BuildContext context) {
    PreferredSize header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          centerTitle: true,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: const Icon(
                Icons.arrow_back_ios,
                color: textWhite,
              ),
            ),
          ),
          title: Text(
            'Your Cart',
            style: whiteStyle.copyWith(fontWeight: medium, fontSize: 14.sp),
          ),
          backgroundColor: defaultBackground,
          automaticallyImplyLeading: false,
        ),
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_cart_view.svg',
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Opss! Your Cart is Empty',
              style: whiteStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: grayStyle,
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomButton(
              onPressed: () {
                context.read<PageBloc>().add(const SetPageEvent(index: 0));
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-home', (route) => false);
              },
              label: 'Explore Store',
              height: 6.h,
              width: 50.w,
            ),
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Subtotal',
                    style: whiteStyle,
                  ),
                  Text(
                    '\$',
                    style: blueStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              thickness: 0.3,
              color: textGray,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  backgroundColor: textWhite,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: whiteStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: textWhite,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          ...cart!
              .map((cart) => CartCard(
                    cart: cart,
                  ))
              .toList()
        ],
      );
    }

    return Scaffold(
        backgroundColor: background,
        appBar: header(),
        body: emptyCart(),
        bottomNavigationBar:
            cart != null ? customBottomNav() : const SizedBox());
  }
}
