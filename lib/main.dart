


import 'package:complete_flutter_dart_development_course/store_app/store_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreApp(),
    );
  }
}








// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//         create: (context) => GetWeatherCubit(),
//         child: Builder(
//           builder: (context) => BlocBuilder<GetWeatherCubit, GetWeatherState>(
//             builder: (context, state) {
//               return MaterialApp(
//                 theme: ThemeData(
//                   appBarTheme: AppBarTheme(
//                     backgroundColor: getAppThemeColor(
//                       BlocProvider.of<GetWeatherCubit>(context)
//                           .weather
//                           ?.weatherCondition,
//                     ),
//                   )
//                 ),
//                 debugShowCheckedModeBanner: false,
//                 home: const WeatherApp(),
//               );
//             },
//           ),
//         ));
//   }
// }


