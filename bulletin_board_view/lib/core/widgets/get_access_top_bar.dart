import 'package:bulletin_board_view/core/widgets/get_access_title_widget.dart';
import 'package:flutter/material.dart';

import 'change_form_of_get_access_widget.dart';

class GetAccessTopBar extends StatelessWidget {
  VoidCallback onTap;
  String title;
  String changeFormOfAccess;
  GetAccessTopBar({
    required this.changeFormOfAccess,
    required this.onTap,
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GetAccessTitleWidget(
          title: title,
        ),
        ChangeFormOfAccessWidget(
          changeGetAccess: changeFormOfAccess,
          onTap: onTap,
        )
      ],
    );
  }
}