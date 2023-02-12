part of 'pages.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return const CustomHeader(
        title: 'Sign In',
        subTitle: 'Sign In to Countinue',
      );
    }

    Widget emailInput() {
      return CustomFormField(
        label: 'Email Address',
        hintText: 'Your Email Address',
        controller: emailController,
        assetIcon: 'assets/icons/ic_email.svg',
      );
    }

    Widget passwordInput() {
      return CustomFormField(
        label: 'Password',
        hintText: 'Your Password',
        controller: passwordController,
        assetIcon: 'assets/icons/ic_password.svg',
      );
    }

    Widget signInButton() {
      return CustomButton(
        onPressed: () => Navigator.pushNamed(context, '/main-home'),
        label: 'Sign In',
        height: 6.h,
      );
    }

    Widget footer() {
      return Row(
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
            onTap: () => Navigator.pushNamed(context, '/sign-up'),
            child: Text(
              'Sign Up',
              style: primaryStyle.copyWith(fontSize: 12.sp),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: defaultBackground,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        bottom: false,
        child: Container(
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: defaultMargin * 2,
              ),
              emailInput(),
              SizedBox(
                height: defaultMargin,
              ),
              passwordInput(),
              SizedBox(
                height: defaultMargin,
              ),
              signInButton(),
              const Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
