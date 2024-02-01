import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';

class BottomTempMinTile extends StatelessWidget {
  const BottomTempMinTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/14.png',
          scale: 8,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Temp Min',
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
                    "${state.weather.tempMin!.celsius!.round().toString()}°C",
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
