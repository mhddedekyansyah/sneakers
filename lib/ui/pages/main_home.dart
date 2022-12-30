part of 'pages.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuild');
    return BlocBuilder<PageBloc, int>(builder: (context, state) {
      return Scaffold(
        backgroundColor: state == 0 ? defaultBackground : background,
        body: IndexedStack(
          index: state,
          children: [Home(), const Chat()],
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
              elevation: 0.0,
              shape: const CircularNotchedRectangle(),
              notchMargin: 12,
              clipBehavior: Clip.antiAlias,
              child: BlocBuilder<PageBloc, int>(
                builder: (context, state) {
                  return BottomNavigationBar(
                    elevation: 0.0,
                    type: BottomNavigationBarType.fixed,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    backgroundColor: bottomNavBarColor,
                    onTap: (index) => context
                        .read<PageBloc>()
                        .add(SetPageEvent(index: index)),
                    items: [
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset('assets/icons/ic_home.svg',
                              color: state == 0 ? primary : textGray),
                          label: 'Home'),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset('assets/icons/ic_chat.svg',
                              color: state == 1 ? primary : textGray),
                          label: 'Chat'),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset('assets/icons/ic_whislist.svg',
                              color: state == 2 ? primary : textGray),
                          label: 'Whislist'),
                      BottomNavigationBarItem(
                          icon: SvgPicture.asset('assets/icons/ic_profile.svg',
                              color: state == 3 ? primary : textGray),
                          label: 'Profile'),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      );
    });
  }
}
