import 'package:flutter/material.dart';
import 'package:project_name/screens/app_layout.dart';
import 'package:project_name/utils/app_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xFFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "NYC",
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    "London",
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
