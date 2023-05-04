import 'package:flutter/material.dart';
import 'package:project_name/screens/app_layout.dart';
import 'package:project_name/utils/app_style.dart';
import 'package:project_name/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0XFFF526799),
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
                  const ThickContainer(),
                  Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const SizedBox(
                                        height: 2,
                                        width: 3,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white)),
                                      )),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 1.6,
                          child: const Icon(
                            Icons.local_airport_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )),
                  const ThickContainer(),
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


//2h 8 m