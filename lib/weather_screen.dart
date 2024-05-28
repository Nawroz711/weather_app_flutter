import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.indigo.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            SizedBox(
              
              width: double.infinity,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      '18 C',
                      style: TextStyle(
                          fontSize: 32.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 17),
                    Icon(
                      Icons.sunny,
                      size: 65.0,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: 17),
                    Text(
                      'Sunny',
                      style: TextStyle(),
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                  HourlyForecaset(),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Addition Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.water_drop_sharp,
                      size: 32,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Humidity'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '89',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.air_sharp,
                      size: 32,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Wind speed'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '232 km/h',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.beach_access_sharp,
                      size: 32,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Pressure'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '46',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HourlyForecaset extends StatelessWidget {
  const HourlyForecaset({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: const Column(
          children: [
            Text(
              '09:00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.cloudy_snowing,
              size: 35.0,
            ),
            SizedBox(height: 10),
            Text(
              '-10.3',
            ),
          ],
        ),
      ),
    );
  }
}
