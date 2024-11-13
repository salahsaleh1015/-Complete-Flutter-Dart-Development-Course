import 'package:complete_flutter_dart_development_course/store_app/views/home_view.dart';
import 'package:complete_flutter_dart_development_course/store_app/views/update_product_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeView.id,
      routes: {
        HomeView.id: (context) => const HomeView(),
        UpdateProductView.id: (context) => const UpdateProductView(),
      },
      debugShowCheckedModeBanner: false,
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
