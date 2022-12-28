part of 'widgets.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.title, required this.subTitle})
      : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: 17.h,
      child: Column(
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
    );
  }
}
