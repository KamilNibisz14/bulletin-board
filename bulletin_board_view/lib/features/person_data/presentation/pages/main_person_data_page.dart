import 'package:bulletin_board_view/core/constants.dart';
import 'package:bulletin_board_view/core/loading_scene.dart';
import 'package:bulletin_board_view/features/person_data/presentation/pages/person_data_scene.dart';
import 'package:bulletin_board_view/features/person_data/presentation/pages/person_not_found_scene.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/person_data_bloc.dart';

class MainPersonDataPage extends StatelessWidget {
  static const String id = 'main_person_data_page';
  const MainPersonDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
      ),
      body: BlocBuilder<PersonDataBloc, PersonDataState>(
        builder: (context, state) {
          if(state is PersonDataInitial){
            context.read<PersonDataBloc>().add(CheckIfPersonDataExistInLocalData());
            return const LoadingWidget();
          }
          else if(state is PersondataNotFound){
            return const PersonNotFoundScene();
          }
          else if(state is PersonDataFound){
            return const PersonDataScene();
          }
          else{
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
