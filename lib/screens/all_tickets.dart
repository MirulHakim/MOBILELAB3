import 'package:flutter/material.dart';
import 'package:mobilelab3/base/utils/all_json.dart';
import 'package:mobilelab3/base/utils/app_routes.dart';
import 'package:mobilelab3/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: const Text('All Tickets'))),

      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
                  ticketList
                      .map(
                        (singleTicket) => GestureDetector(
                          // Handle ticket tap
                          onTap: () {
                            var index = ticketList.indexOf(singleTicket);
                            Navigator.pushNamed(
                              context,
                              AppRoutes.ticketScreen,
                              arguments: {"index": index},
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TicketView(
                              ticket: singleTicket,
                              wholeScreen: true,
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
