part of 'widgets.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader(
      {Key? key, required this.title, required this.subTitle, this.img})
      : super(key: key);

  final String title;
  final String subTitle;
  final Widget? img;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 12.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: whiteStyle.copyWith(fontWeight: semibold, fontSize: 24),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subTitle,
                style: grayStyle,
              ),
            ],
          ),
          img == null ? const SizedBox() : img as Widget
        ],
      ),
    );
  }
}
