import 'package:flutter/material.dart';
import 'package:mobilelab3/base/bottom_nav_bar.dart';
import 'package:mobilelab3/base/utils/app_routes.dart';
import 'package:mobilelab3/screens/all_tickets.dart';
import 'package:mobilelab3/screens/home/all_hotels.dart';
import 'package:mobilelab3/screens/hotel_detail.dart';
import 'package:mobilelab3/screens/ticket/ticket_screen.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      routes: {
        AppRoutes.homePage: (context) => BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelDetail: (context) => const HotelDetail(),
      },
    );
  }
}
