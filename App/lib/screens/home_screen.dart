import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_name/screens/hotels_screen.dart';
import 'package:project_name/screens/ticket_view.dart';
import 'package:project_name/utils/app_infolist.dart';
import '/utils/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: Styles.headlineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        "Book Tickets",
                        style: Styles.headlineStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"))),
                  )
                ],
              ),
              const Gap(20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    const Icon(FluentSystemIcons.ic_fluent_search_regular),
                    Text(
                      "Search",
                      style: Styles.headlineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Flights',
                    style: Styles.headlineStyle2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View All",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              )
            ]),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(tickets: singleTicket))
                    .toList()),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotels',
                  style: Styles.headlineStyle2,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList
                    .map((hotel) => HotelScreeen(hotel: hotel))
                    .toList()),
          )
        ],
      ),
    );
  }
}
