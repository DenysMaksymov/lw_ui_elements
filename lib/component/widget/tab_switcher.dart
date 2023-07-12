import 'package:flutter/material.dart';

import '../../utils/util_colors.dart';
import '../../utils/util_text_style.dart';

class TabSwitcher extends StatefulWidget {
  const TabSwitcher({super.key});

  @override
  State<TabSwitcher> createState() => _TabSwitcherState();
}

class _TabSwitcherState extends State<TabSwitcher>
    with SingleTickerProviderStateMixin {
  int indexSelected = 0;
  late double halfWidth;

  // late AnimationController controller;
  // late Animation animation;
  // late Color color;

  changeIndex(index) {
    indexSelected = index;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    // controller =
    //     AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    // animation =
    //     ColorTween(begin: UtilColors.white, end: UtilColors.black).animate(controller);
    // // isSelect ? UtilColors.white : UtilColors.black
    // animation.addListener(() {
    //   setState(() {
    //     color = animation.value;
    //   });
    // });

    // controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      halfWidth = constraints.biggest.width / 2;
      return Container(
        height: 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1,
              color: UtilColors.black,
            )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: indexSelected == 0 ? 0 : halfWidth,
              right: indexSelected == 0 ? halfWidth : 0,
              top: 0,
              bottom: 0,
              child: Container(
                  width: halfWidth,
                  decoration: BoxDecoration(
                    color: UtilColors.black,
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
            Row(
              children: [
                _TabButton(
                  index: 0,
                  onTap: (index) => changeIndex(index),
                  isSelect: indexSelected == 0,
                  title: 'My posts',
                ),
                _TabButton(
                  index: 1,
                  onTap: (index) => changeIndex(index),
                  isSelect: indexSelected == 1,
                  title: 'Request',
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}

class _TabButton extends StatelessWidget {
  final int index;
  final Function onTap;
  final bool isSelect;
  final String title;

  const _TabButton({
    super.key,
    required this.index,
    required this.onTap,
    required this.isSelect,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => onTap(index),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: UtilTextStyle.textRobotoCondensed.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: isSelect ? UtilColors.white : UtilColors.black),
        ),
      ),
    );
  }
}
