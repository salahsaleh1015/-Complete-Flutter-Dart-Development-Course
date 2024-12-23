import 'package:complete_flutter_dart_development_course/notes_app/constants.dart';
import 'package:complete_flutter_dart_development_course/notes_app/views/notes_view.dart';
import 'package:complete_flutter_dart_development_course/store_app/views/home_view.dart';
import 'package:complete_flutter_dart_development_course/store_app/views/update_product_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
      theme: ThemeData.dark(),
      darkTheme: ThemeData(fontFamily: "Pacifico"),
    );
  }
}

// class StoreApp extends StatelessWidget {
//   const StoreApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: HomeView.id,
//       routes: {
//         HomeView.id: (context) => const HomeView(),
//         UpdateProductView.id: (context) =>UpdateProductView(),
//       },
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

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
