import 'package:bulletin_board_view/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'features/login/presentation/bloc/login_bloc.dart';
import 'features/login/presentation/pages/login_page.dart';
import 'features/main_bulletin_board/presentation/bloc/main_bulletin_board_bloc.dart';
import 'features/main_bulletin_board/presentation/pages/main_bulletin_board_page.dart';
import 'features/person_data/presentation/bloc/person_data_bloc.dart';
import 'features/person_data/presentation/pages/main_person_data_page.dart';
import 'features/register/presentation/bloc/register_bloc.dart';
import 'features/register/presentation/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.openBox('UserAccessData');
  setup();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => PersonDataBloc(),
      ),
      BlocProvider(
        create: (context) => LoginBloc(),
      ),
      BlocProvider(
      create: (context) => RegisterBloc(),
      ),
      BlocProvider(
      create: (context) => MainBulletinBoardBloc(),
      ),
    ],
    child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bulletin Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MainBulletinBoardPage.id,
      routes: {
        MainBulletinBoardPage.id: (context) => const MainBulletinBoardPage(),
        MainPersonDataPage.id: (context) => const MainPersonDataPage(),
        LoginPage.id: (context) => const LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
      },
    );
  }
}
