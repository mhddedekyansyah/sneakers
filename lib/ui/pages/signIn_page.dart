part of 'pages.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              CustomHeader(
                title: 'Sign In',
                subTitle: 'Sign In to Countinue',
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
                onPressed: () => Navigator.pushNamed(context, '/main-home'),
                label: 'Sign In',
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
                  style: grayStyle.copyWith(fontSize: 12),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/sign-up'),
                  child: Text(
                    'Sign Up',
                    style: primaryStyle.copyWith(fontSize: 12),
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
