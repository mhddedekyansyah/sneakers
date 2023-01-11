part of 'pages.dart';

class DetailChat extends StatefulWidget {
  DetailChat({Key? key, this.product}) : super(key: key);
  ProductModel? product;

  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  TextEditingController messageController = TextEditingController(text: '');

  @override
  void initState() {
    if (widget.product is! UninitializedProductModel) {
      messageController.text = 'Hi, This item is still available?';
    }

    messageController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PreferredSize appBar() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: defaultBackground,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: const Icon(
                Icons.arrow_back_ios,
                color: textWhite,
                size: 18,
              ),
            ),
          ),
          title: Row(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_chat_owner.svg',
                    width: 50,
                    height: 50,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: onlineColor,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: whiteStyle.copyWith(
                        fontSize: 12.sp, fontWeight: medium),
                  ),
                  Text(
                    'online',
                    style:
                        greyStyle.copyWith(fontSize: 12.sp, fontWeight: light),
                  )
                ],
              )
            ],
          ),
          automaticallyImplyLeading: false,
        ),
      );
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor2,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primary,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                widget.product!.imgUrl!.first,
                width: 54,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.product!.name!,
                    style: primaryStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$${widget.product!.price}',
                    style: blueStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    widget.product = UninitializedProductModel();
                    messageController.text = '';
                  });
                },
                child: SvgPicture.asset(
                  'assets/icons/close.svg',
                  width: 22,
                )),
          ],
        ),
      );
    }

    Widget messageBar() {
      return Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultMargin, vertical: defaultMargin / 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.product is UninitializedProductModel
                ? const SizedBox()
                : productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bottomNavBarColor),
                    height: 45,
                    child: TextFormField(
                      controller: messageController,
                      style: whiteStyle,
                      cursorColor: primary,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type Message...',
                        hintStyle: grayStyle,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    if (messageController.text.isEmpty) {
                      debugPrint('mother fuck');
                      return;
                    } else {
                      debugPrint('fuck');
                    }
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color:
                          messageController.text.isEmpty ? textGrey : primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset('assets/icons/ic_send.svg',
                        width: 18, height: 18),
                  ),
                )
              ],
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
          ChatBubble(
            product: widget.product,
            isSender: true,
            text: messageController.text,
          )
        ],
      );
    }

    return Scaffold(
        backgroundColor: background,
        appBar: appBar(),
        body: Stack(
          children: [
            content(),
            Align(alignment: Alignment.bottomCenter, child: messageBar())
          ],
        ));
  }
}
