part of 'widgets.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {Key? key,
      required this.label,
      required this.controller,
      required this.assetIcon,
      required this.hintText})
      : super(key: key);

  final String label;
  final TextEditingController controller;
  final String assetIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: whiteStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        const SizedBox(height: 5),
        Container(
          height: 6.h,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: formFillColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SvgPicture.asset(assetIcon),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: TextFormField(
                  controller: controller,
                  cursorColor: primary,
                  decoration: InputDecoration.collapsed(
                      hintText: hintText,
                      hintStyle: grayStyle.copyWith(fontWeight: regular)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
