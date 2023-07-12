import 'package:flutter/material.dart';
import 'package:ui_project/utils/util_colors.dart';

import 'component/post_list/post_list.dart';
import 'component/widget/tab_switcher.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: UtilColors.transparent,
          shadowColor: UtilColors.transparent,
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TabSwitcher(),
                SizedBox(height: 16),
                Expanded(child: PostList()),
              ],
            ),
          ),
        ));
  }
}
