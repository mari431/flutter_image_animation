import 'package:flutter/material.dart';

import '../../model/mimage.dart';

class MimageCoverImage extends StatelessWidget {
  const MimageCoverImage({
    required this.mimage,
    super.key,
    this.height,
  });

  final MImage mimage;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: .75,
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(mimage.assetImage),
              fit: BoxFit.cover,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                blurRadius: 40,
                offset: Offset(-20, 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
