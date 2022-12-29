part of 'pages.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Message Support',
          style: whiteStyle.copyWith(fontWeight: medium, fontSize: 14.sp),
        ),
        backgroundColor: defaultBackground,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: SizedBox(
          width: 100.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/icons/ic_message.svg'),
              SizedBox(
                height: 2.5.h,
              ),
              Text(
                'Opss no message yet?',
                style: whiteStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Text(
                'You have never done a transaction',
                style: grayStyle,
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(
                onPressed: () {},
                label: 'Explore Store',
                height: 6.h,
                width: 50.w,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: SizedBox(
          width: 100.w,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding,
            ),
            children: [
              for (int i = 0; i < 3; i++)
                Column(
                  children: [
                    Container(
                      height: 8.h,
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/ic_chat_owner.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shoe Store',
                                  style: whiteStyle.copyWith(fontSize: 12.sp),
                                ),
                                Text(
                                  'Good night, This item is on...Good night, This item is on...',
                                  style: grayStyle.copyWith(fontSize: 9.sp),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Now',
                            style: grayStyle.copyWith(fontSize: 9.sp),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: divider,
                    )
                  ],
                )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          header(),
          // emptyChat()
          content(),
        ],
      ),
    );
  }
}
