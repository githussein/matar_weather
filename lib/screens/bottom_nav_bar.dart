import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'reels_screen.dart';
import 'predictions_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  static const routeName = '/bottom-nav-bar';

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  String _currentPage = 'Predictions';
  int _selectedIndex = 0;

  List<String> pageKeys = ['Predictions', 'Map', 'Reels'];

  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    'Reels': GlobalKey<NavigatorState>(),
    'Map': GlobalKey<NavigatorState>(),
    'Predictions': GlobalKey<NavigatorState>(),
  };

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _items = [
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Icon(Icons.wb_sunny),
        ),
        label: 'التوقعات',
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Icon(Icons.satellite),
        ),
        label: 'الأقمار الاسطناعية',
      ),
      const BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Icon(Icons.camera_alt),
        ),
        label: 'صور ومقاطع',
      ),
    ];
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
        !await _navigatorKeys[_selectedIndex]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != 'Predictions') {
            _selectTab('Predictions', 0);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: [
            _buildOffstageNavigator('Reels'),
            _buildOffstageNavigator('Map'),
            _buildOffstageNavigator('Predictions'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: _items,
          currentIndex: _selectedIndex,
          onTap: (int index) => _selectTab(pageKeys[index], index),
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child = const PredictionsScreen();

    if (tabItem == 'Map') {
      child = const MapScreen();
    } else if (tabItem == 'Reels') {
      child = const ReelsScreen();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
