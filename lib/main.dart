import 'package:flutter/material.dart';

// импортируем все файлы сюда:
import './input_screen.dart';
import './registration.dart';
import './calculator_pizza.dart';
import './first_screen.dart';
import './second_screen.dart';
import './third_screen.dart';

void main() {
  runApp(
    MaterialApp(
      //title: 'Наименование',
      // Запустите приложение с именем маршрута "/". В этом случае приложение запускается
      // на первом экране виджет.
      initialRoute: '/',
      routes: {
        // При переходе к маршруту "/" создаем виджет первого экрана.
        '/': (context) => const FirstScreen(),
        // При переходе к маршруту "/второй" создаем виджет второго экрана.
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/authorization': (context) => const InputScreen(),

      },
    ),
  );
}
