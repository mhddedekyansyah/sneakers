part of 'pages.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController usernameController =
      TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: defaultBackground,
        body: SafeArea(
          child: Container(
            color: defaultBackground,
            width: 100.w,
            height: 100.h,
            padding: EdgeInsets.all(defaultPadding),
            child: Stack(children: [
              SingleChildScrollView(
                  child: Column(
                children: [
                  const CustomHeader(
                    title: 'Sign Up',
                    subTitle: 'Register and Happy Shoping',
                  ),
                  CustomFormField(
                    label: 'Full Name',
                    hintText: 'Your Full Name',
                    controller: nameController,
                    assetIcon: 'assets/icons/ic_fullname.svg',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  CustomFormField(
                    label: 'Username',
                    hintText: 'Your Username',
                    controller: passwordController,
                    assetIcon: 'assets/icons/ic_username.svg',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  CustomFormField(
                    label: 'Email Address',
                    hintText: 'Your Email Address',
                    controller: emailController,
                    assetIcon: 'assets/icons/ic_email.svg',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  CustomFormField(
                    label: 'Password',
                    hintText: 'Your Password',
                    controller: passwordController,
                    assetIcon: 'assets/icons/ic_password.svg',
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  CustomButton(
                    onPressed: () {},
                    label: 'Sign Up',
                    height: 6.h,
                  ),
                ],
              )),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: grayStyle.copyWith(fontSize: 12.sp),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        'Sign In',
                        style: primaryStyle.copyWith(fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
