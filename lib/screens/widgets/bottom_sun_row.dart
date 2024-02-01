import 'package:flutter/material.dart';
import 'package:weather_app/screens/widgets/bottom_sun_down_tile.dart';
import 'package:weather_app/screens/widgets/bottom_sun_up_tile.dart';

class BottomSunRow extends StatelessWidget {
  const BottomSunRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [BottomSunUpTile(), BottomSunDownTile()],
    );
  }
}
