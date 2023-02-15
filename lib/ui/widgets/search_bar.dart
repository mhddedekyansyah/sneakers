part of 'widgets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: bottomNavBarColor,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_search.svg',
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Search', style: grayStyle)
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primary,
            ),
            child: SvgPicture.asset(
              'assets/icons/ic_filter.svg',
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
