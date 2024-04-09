
import 'package:flutter/material.dart';

import '../../utils/app_style.dart';
import '../../utils/custColors.dart';

class cus_navigateBtn extends StatefulWidget {
  final Function onPressed;
  final String text;
  const cus_navigateBtn({super.key,required this.onPressed, required this.text});

  @override
  State<cus_navigateBtn> createState() => _cus_navigateBtnState();
}

class _cus_navigateBtnState extends State<cus_navigateBtn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        alignment: Alignment.topLeft,
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
        backgroundColor: MaterialStateProperty.all(AppColors.lightbluecolor),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child:Text(
          widget.text,
          style:  App_style().text_13_textColor_PR,
        ),
      ),
      onPressed: () {
        widget.onPressed();
      },
    );
  }
}
