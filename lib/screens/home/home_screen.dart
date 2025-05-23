import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:mobilelab3/base/res/media.dart';
import 'package:mobilelab3/base/res/styles/app_styles.dart';
import 'package:mobilelab3/base/utils/all_json.dart';
import 'package:mobilelab3/base/utils/app_routes.dart';
import 'package:mobilelab3/base/widgets/app_double_text.dart';
import 'package:mobilelab3/base/widgets/heading_text.dart';
import 'package:mobilelab3/base/widgets/ticket_view.dart';
import 'package:mobilelab3/screens/home/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Column //Row
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      //we want scrollable effect
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        HeadingText(text: "Book Tickets", isColor: false),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func:
                      () => Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                // Ticket Scrollable list
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        ticketList
                            .take(2)
                            .map(
                              (singleTicket) => GestureDetector(
                                onTap: () {
                                  var index = ticketList.indexOf(singleTicket);
                                  print("I am tapped on the ticket $index");
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.ticketScreen,
                                    arguments: {"index": index},
                                  );
                                },
                                child: TicketView(ticket: singleTicket),
                              ),
                            )
                            .toList(),
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "View all",
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                const SizedBox(height: 20),
                // Hotel Scrollable list
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children:
                        hotelList
                            .take(2)
                            .map(
                              (singleHotel) => GestureDetector(
                                onTap: () {
                                  var index = hotelList.indexOf(singleHotel);
                                  Navigator.pushNamed(
                                    context,
                                    AppRoutes.hotelDetail,
                                    arguments: {"index": index},
                                  );
                                },
                                child: Hotel(hotel: singleHotel),
                              ),
                            )
                            .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
