part of 'pages.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: defaultBackground,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.check,
              color: primary,
            ),
            onPressed: () {},
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: greyStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whiteStyle,
              decoration: InputDecoration(
                hintText: 'user.name',
                hintStyle: whiteStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: textGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: greyStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whiteStyle,
              decoration: InputDecoration(
                hintText: '@user.username',
                hintStyle: whiteStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: textGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: greyStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              style: whiteStyle,
              decoration: InputDecoration(
                hintText: 'user.email',
                hintStyle: whiteStyle,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: textGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: 100.w,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: SvgPicture.asset(
                'assets/images/profile_null.svg',
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: background,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
