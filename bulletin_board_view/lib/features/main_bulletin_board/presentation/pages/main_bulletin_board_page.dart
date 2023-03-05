import 'package:bulletin_board_view/core/constants.dart';
import 'package:bulletin_board_view/features/main_bulletin_board/presentation/bloc/main_bulletin_board_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/loading_scene.dart';
import '../../../person_data/presentation/pages/main_person_data_page.dart';

class MainBulletinBoardPage extends StatelessWidget {
  static const String id = 'main_bulletin_board_page';
  const MainBulletinBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double iconSize = screenHeight / 25;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Center(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, MainPersonDataPage.id),
                  child: Icon(
                    Icons.person,
                    size: iconSize,
                  ),
                ),
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: BlocBuilder<MainBulletinBoardBloc, MainBulletinBoardState>(
          builder: (context, state) {
            return const LoadingWidget();
          },
        ));
  }
}
