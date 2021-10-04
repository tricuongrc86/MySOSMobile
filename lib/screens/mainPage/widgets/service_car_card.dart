import 'package:flutter/material.dart';
import 'package:mysos/screens/location/location_view.dart';
import 'package:mysos/screens/mainPage/main_view.dart';

class ServiceCar extends StatelessWidget {
  String nameService;
  ServiceCar(this.nameService);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FlatButton(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(0xFFF5F6F9),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LocationView();
                    // return MapCarPage();
                  },
                ),
              );
            },
            child: Row(
              children: [
                              Icon(Icons.miscellaneous_services_sharp),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    nameService,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
