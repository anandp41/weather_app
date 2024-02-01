import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';

class BottomTempMaxTile extends StatelessWidget {
  const BottomTempMaxTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/13.png',
          scale: 8,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Temp Max',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 3,
            ),
            BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
              builder: (context, state) {
                if (state is WeatherBlocSuccess) {
                  return Text(
                    "${state.weather.tempMax!.celsius!.round().toString()}°C",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  );
                } else {
                  return Container();
                }
              },
            )
          ],
        )
      ],
    );
  }
}
