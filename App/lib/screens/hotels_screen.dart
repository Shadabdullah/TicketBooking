import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_name/utils/app_layout.dart';
import 'package:project_name/utils/app_style.dart';

class HotelScreeen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelScreeen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayOut.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(top: 5, right: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Styles.primaryColor),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              boxShadow: const [
                BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${hotel['image']}'))),
        ),
        const Gap(10),
        Text(
          hotel['place'],
          style: Styles.headlineStyle2
              .copyWith(color: const Color.fromARGB(255, 237, 227, 197)),
        ),
        const Gap(10),
        Text(
          hotel['Destination'],
          style: Styles.headlineStyle2
              .copyWith(color: const Color.fromARGB(255, 237, 227, 197)),
        ),
        const Gap(10),
        Text(
          '\$ ${hotel['price']}/night',
          style: Styles.headlineStyle2
              .copyWith(color: const Color.fromARGB(255, 237, 227, 197)),
        )
      ]),
    );
  }
}
