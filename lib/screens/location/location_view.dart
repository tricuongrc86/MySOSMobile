import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mysos/screens/mainPage/main_view.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
                  target: LatLng(10.84189934370625, 106.81003664856438),
                  zoom: 15),
            ),
          ),
          Positioned(top: 30, left: 20, right: 20, child: LocationSearchBox()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.black87.withOpacity(0.8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Địa chỉ: 157 đường 265 quận 9, Hồ Chí Minh",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Vấn đề: Xe oto",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Dịch vụ: Kéo xe",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Nhập ghi chú...',
                          contentPadding: EdgeInsets.all(20)),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            child: Text('Xác nhận'),
                            onPressed: () => {
                                  createAlertDialog(context),
                                }),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.amber.shade200,
            title: Column(children: [
              CircleAvatar(
                backgroundColor: Colors.amber.shade900.withOpacity(0.6),
                radius: 50,
                child: CircleAvatar(
                  // backgroundImage: AssetImage(urlImage),
                  backgroundImage: NetworkImage(
                      'https://scontent.fsgn8-2.fna.fbcdn.net/v/t1.6435-9/70587168_138618394076120_3910239866679459840_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=174925&_nc_ohc=S7OB6cQSF04AX8F-2Sr&_nc_ht=scontent.fsgn8-2.fna&oh=ec301b221d641a6527ed6ebb4dffea42&oe=617F28F5'),
                  radius: 40,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text('Nguyễn Huy Trí Cường'),
            ]),
            content: Text(
                'Đã tìm thấy sự trợ giúp. Phía đối tác đang di chuyển đến bạn'),
            actions: [
              Center(
                child: RaisedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MainView())),
                    child: Text(
                      'Xác nhận',
                      textAlign: TextAlign.right,
                    )),
              )
            ],
          );
        });
  }
}

class LocationSearchBox extends StatelessWidget {
  const LocationSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Nhập vị trí của bạn',
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.only(left: 20, bottom: 5, right: 5),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
