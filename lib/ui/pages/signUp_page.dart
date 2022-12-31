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
    Widget header() {
      return const CustomHeader(
        title: 'Sign Up',
        subTitle: 'Register and Happy Shoping',
      );
    }

    Widget fullnameInput() {
      return CustomFormField(
        label: 'Full Name',
        hintText: 'Your Full Name',
        controller: nameController,
        assetIcon: 'assets/icons/ic_fullname.svg',
      );
    }

    Widget usernameInput() {
      return CustomFormField(
        label: 'Username',
        hintText: 'Your Username',
        controller: passwordController,
        assetIcon: 'assets/icons/ic_username.svg',
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

    Widget signUpButton() {
      return CustomButton(
        onPressed: () {},
        label: 'Sign Up',
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
            onTap: () => Navigator.pop(context),
            child: Text(
              'Sign In',
              style: primaryStyle.copyWith(fontSize: 12.sp),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: defaultBackground,
      body: SafeArea(
        child: Container(
          color: defaultBackground,
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              header(),
              SizedBox(
                height: defaultMargin * 2,
              ),
              fullnameInput(),
              SizedBox(
                height: defaultMargin,
              ),
              usernameInput(),
              SizedBox(
                height: defaultMargin,
              ),
              emailInput(),
              SizedBox(
                height: defaultMargin,
              ),
              passwordInput(),
              SizedBox(
                height: defaultMargin,
              ),
              signUpButton(),
              const Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}
