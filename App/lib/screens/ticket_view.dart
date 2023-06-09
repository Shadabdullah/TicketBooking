import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_name/utils/app_layout.dart';
import 'package:project_name/utils/app_style.dart';
import 'package:project_name/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> tickets;
  const TicketView({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(children: [
          //Blue Part of ticket View
          Container(
            decoration: const BoxDecoration(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color(0xfff526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text(
                    tickets['from']['code'],
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
                    tickets['to']['code'],
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  )
                ],
              ),
              const Gap(1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      tickets['from']['name'],
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                  ),
                  Text(
                    tickets['flying_time'],
                    style: Styles.headlineStyle4.copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      tickets['to']['name'],
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              )
            ]),
          ),
          // Orange part of ticket View

          Container(
            color: Styles.orangeColor,
            child: Row(children: [
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)))),
              )
            ]),
          ),
          // Bottom view
          Container(
            decoration: BoxDecoration(
                // ignore: use_full_hex_values_for_flutter_colors
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
            padding:
                const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tickets['date'],
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "DATE",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        tickets['departure_time'],
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Departure time",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        tickets['number'].toString(),
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Number",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      )
                    ],
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
