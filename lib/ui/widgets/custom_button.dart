part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.onPressed,
      required this.label,
      required this.height,
      this.width = 0.0})
      : super(key: key);

  final VoidCallback onPressed;
  final String label;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 0.0 ? 100.w : width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: primary,
            textStyle: whiteStyle,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          label,
          style: whiteStyle,
        ),
      ),
    );
  }
}
