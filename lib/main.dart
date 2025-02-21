import 'package:complete_flutter_dart_development_course/scholar_chat_app/scholar_chat_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:flutter/material.dart';




void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
     options: DefaultFirebaseOptions.currentPlatform,
   );
  runApp(const ScholarChatApp());
}

// void main() async {
//   Bloc.observer = SimpleBlocObserver();
//   await Hive.initFlutter();
//   Hive.registerAdapter(NoteModelAdapter());
//   await Hive.openBox<NoteModel>(kNotesBox);
//
//   runApp(const NotesApp());
// }
//
// class NotesApp extends StatelessWidget {
//   const NotesApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => GetNotesCubit()..getAllNotes(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: const NotesView(),
//         theme: ThemeData.dark(),
//         darkTheme: ThemeData(fontFamily: "Pacifico"),
//       ),
//     );
//   }
// }

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
//     return BlocProvider(npm install -g firebase-tools
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
