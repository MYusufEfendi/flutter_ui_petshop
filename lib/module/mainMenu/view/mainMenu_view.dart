import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  State<MainMenuView> createState() => _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<MainMenuView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: selectedIndex,
          children: [
            const DashboardView(),
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.purple[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 80.0,
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            selectedItemColor: Colors.grey[100],
            unselectedItemColor: Colors.grey[400],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.orange[700],
            onTap: (index) {
              selectedIndex = index;

              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                ),
              ),
              BottomNavigationBarItem(
                label: "Notification",
                icon: Icon(
                  Icons.notifications,
                ),
              ),
              BottomNavigationBarItem(
                label: "Favorite",
                icon: Icon(
                  Icons.favorite,
                ),
              ),
              BottomNavigationBarItem(
                label: "basket",
                icon: Icon(
                  Icons.card_travel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
