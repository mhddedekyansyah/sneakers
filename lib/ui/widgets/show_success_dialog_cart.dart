part of 'widgets.dart';

Future<void> showSuccessDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) => SizedBox(
      width: 40.w,
      child: AlertDialog(
        backgroundColor: bottomNavBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: textWhite,
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/icons/ic_success.svg',
                width: 100,
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Hurray :)',
                style: whiteStyle.copyWith(
                  fontSize: 18,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Item added successfully',
                style: grayStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                height: 6.h,
                label: 'View My Cart',
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
