part of 'pages.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      body: IndexedStack(
        index: 0,
        children: [Home()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: floatingBtnColor,
        elevation: 0.0,
        child: SvgPicture.asset('assets/icons/ic_cart.svg'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: SizedBox(
          height: 9.h,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: bottomNavBarColor,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/ic_home.svg',
                      color: primary,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/ic_chat.svg'),
                    label: 'Chat'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/ic_whislist.svg'),
                    label: 'Whislist'),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/ic_profile.svg'),
                    label: 'Profile'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
