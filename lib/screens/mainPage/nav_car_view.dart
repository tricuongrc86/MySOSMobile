import 'package:flutter/material.dart';
import 'package:mysos/screens/mainPage/widgets/service_car_card.dart';
class NavCarView extends StatelessWidget {
  const NavCarView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            ServiceCar('Vá lốp xe'),
            ServiceCar('Thay lốp'),
            ServiceCar('Xe không khởi động'),
            ServiceCar('Thay bugi'),
            ServiceCar('Kéo xe')
          ],
        ),
    );
  }
}