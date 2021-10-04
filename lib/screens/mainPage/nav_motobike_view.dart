import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mysos/screens/mainPage/widgets/service_bike_card.dart';
class NavMotoBikeView extends StatelessWidget {
  const NavMotoBikeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            ServiceBike('Vá săm xe máy'),
            ServiceBike('Vá lốp không săm xe ga'),
            ServiceBike('Vá lốp xe'),
            ServiceBike('Thay dây ga'),
            ServiceBike('Thay bugi'),
            ServiceBike('Kéo xe'),
          ],
        ),
    );
  }
}