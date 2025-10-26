import "package:flutter/material.dart";
import "package:learn_flutter/data/notifiers.dart";
import "package:learn_flutter/views/pages/home_page.dart";
import "package:learn_flutter/views/pages/profile_page.dart";
import "package:learn_flutter/views/widgets/bottom_navbar.dart";

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              darkModeNotifier.value = !darkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: darkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selctedPage, child) {
          return pages.elementAt(selctedPage);
        },
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
