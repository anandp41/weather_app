import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';

class BottomSunUpTile extends StatelessWidget {
  const BottomSunUpTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/11.png',
          scale: 8,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sunrise',
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
                    DateFormat().add_jm().format(state.weather.sunrise!),
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
