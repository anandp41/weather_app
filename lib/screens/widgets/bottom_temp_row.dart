import 'package:flutter/material.dart';
import 'package:weather_app/screens/widgets/bottom_temp_max_tile.dart';
import 'package:weather_app/screens/widgets/bottom_temp_min_tile.dart';

class BottomTempRow extends StatelessWidget {
  const BottomTempRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [BottomTempMaxTile(), BottomTempMinTile()],
    );
  }
}
