import 'package:covid_tracker/news/features/covid_19/presentation/constants/theme_data.dart';
import 'package:covid_tracker/news/features/covid_19/presentation/pages/coivd_page.dart';
import 'package:covid_tracker/news/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:covid_tracker/news/injection_container.dart';
// import 'package:covid_tracker/repositories/repositories.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'blocs/blocs.dart';
// import 'home.dart';
// import 'simple_bloc_delegate.dart';
// import 'utils/storageutil.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await StorageUtil.getInstance();
  
//   final ApiRepository apiRepository = ApiRepository(apiClient: ApiClient());
//   BlocSupervisor.delegate = SimpleBlocDelegate();
//   runApp(MultiBlocProvider(providers: [
//     BlocProvider<CaseBloc>(
//       create: (context) => CaseBloc(apiRepository: apiRepository),
//     ),
//     BlocProvider<NewsBloc>(
//       create: (context) => NewsBloc(apiRepository: apiRepository),
//     ),
//   ], child: MyApp(apiRepository: apiRepository,)));
// }

// class MyApp extends StatelessWidget {
//   final ApiRepository apiRepository;

//   const MyApp({Key key, @required this.apiRepository}) : assert(apiRepository != null), super(key: key);
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CaseBloc, CaseState>(
//       builder: (BuildContext context, CaseState state) {
//         return MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.orange,
//           ),
//           home: BlocProvider(
//             create: (context) => CaseBloc(apiRepository: apiRepository),
//             child: Home(),
//           ),
//         );
//       },
//     );
//   }
// }





Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19 News',
      theme: themeData,
      routes: <String, WidgetBuilder>{
        '/splash': (BuildContext context) => SplashScreen(),
        '/covidPage': (BuildContext context) => CovidPage(),
      },
      home: SplashScreen(),
    );
  }
}