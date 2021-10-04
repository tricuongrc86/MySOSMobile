import 'package:flutter/material.dart';
import 'package:mysos/screens/mainPage/main_view.dart';

class Body extends StatelessWidget {
  final String titleOTP = "Xác nhận OTP";
  final String requiredText = "Vui lòng nhập số điện thoại";
  final String descriptionOTP =
      "Một đoạn mã gồm 4 chữ số đã được gửi về vui lòng kiểm tra trong phần tin nhắn";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Icon(
          Icons.textsms,
          size: 150,
        ),
        SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            requiredText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              hintText: 'Số điện thoại',
              hintStyle: TextStyle(color: Colors.black45),
              prefixIcon: Icon(Icons.phone, color: Colors.amber[700]),
              filled: true,
              fillColor: Colors.white70,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white10.withOpacity(0.7)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.white10.withOpacity(0.7)),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 40,
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Text('Gửi mã OTP'),
            onPressed: () => createAlertDialog(context),
          ),
        ),
        Spacer(),
      ],
    ));
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text(
              'Xác nhận OTP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(
                'Một mã OTP 4 chữ số đã được gửi tới số điện thoại của bạn.'),
            actions: [
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Text('1'), Text('2'), Text('3'), Text('4')],
                      ),
                    ),
                    RaisedButton(
                        child: Text(
                          'Xác nhận',
                          textAlign: TextAlign.right,
                        ),
                        onPressed: () => {
                              Navigator.pop(context),
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                                  builder: (context) => MainView()),(route)=>false),
                            }),
                  ],
                ),
              )
            ],
          );
        });
  }
}
