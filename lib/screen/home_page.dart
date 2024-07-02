import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_animation/screen/widget/InfiniteDragableSlider.dart';
import 'package:flutter_image_animation/screen/widget/MagazineCoverImage.dart';
import 'package:flutter_image_animation/screen/widget/MagazinesDetailsScreen.dart';

import '../model/mimage.dart';

// import '../../../../core/core.dart';
// import '../../../magazines_details/presentation/screens/magazines_details_screen.dart';
// import '../widgets/all_editions_list_view.dart';
// import '../widgets/infinite_dragable_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    this.enableEntryAnimation = false,
    this.initialIndex = 0,
  });

  final bool enableEntryAnimation;
  final int initialIndex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final List<MImage> magazines = MImage.fakeMImagesValues;
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void openMagazineDetail(BuildContext context, int index,) {
    setState(() => currentIndex = index);
    MagazinesDetailsScreen.push(
      context,
      magazines: magazines,
      // magazines:futureMagazines,
      index: currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _AppBar(),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Container(
              width: 200,
              height: 400,
              child: InfiniteDragableSlider(
                iteamCount: MImage.fakeMImagesValues.length,
                itemBuilder: (context, index) => MimageCoverImage(
                    mimage: MImage.fakeMImagesValues[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget implements PreferredSize {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // clipBehavior: Clip.none,
      title: Text('Image Animation'),
      actions: [
        // const MenuButton(),
      ],
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
