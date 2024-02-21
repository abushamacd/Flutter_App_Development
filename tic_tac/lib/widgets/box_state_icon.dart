import 'package:flutter/material.dart';

import '../enums/box_state.dart';

class BoxStateIcon extends StatelessWidget {
  const BoxStateIcon({super.key, required this.state});

  final state;

  @override
  Widget build(BuildContext context) {
    if (state == BoxState.cross) {
      return Icon(
        Icons.close,
        size: 120.0,
      );
    } else if (state == BoxState.circle) {
      return Icon(
        Icons.lens_outlined,
        size: 120.0,
      );
    }

    return Container();
  }
}
