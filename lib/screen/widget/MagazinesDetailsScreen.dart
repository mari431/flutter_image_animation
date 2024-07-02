import 'package:flutter/material.dart';

import '../../model/mimage.dart';


class MagazinesDetailsScreen extends StatefulWidget {
  const MagazinesDetailsScreen({
    required this.index,
    required this.mimagess,
    Key? key,
  }) : super(key: key);

  final int index;
  final List<MImage> mimagess;

  static void push(
      BuildContext context, {
        required int index,
        required List<MImage> magazines,
      }) =>
      Navigator.push<int>(
        context,
        PageRouteBuilder(
          pageBuilder: (_, animation, __) => FadeTransition(
            opacity: animation,
            child: MagazinesDetailsScreen(
              index: index,
              mimagess: magazines,
            ),
          ),
        ),
      );

  @override
  State<MagazinesDetailsScreen> createState() => _MagazinesDetailsScreenState();
}

class _MagazinesDetailsScreenState extends State<MagazinesDetailsScreen> {
  late final ScrollController scrollController;
  late ValueNotifier<int> indexNotifier;
  double headerPercent = 0;

  @override
  void initState() {
    scrollController = ScrollController();
    indexNotifier = ValueNotifier(widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.65,
                  child: Center(
                    child: Text(
                      "3D",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}