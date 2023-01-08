import 'package:flutter/material.dart';

class PreviousOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(18),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Önceki Siparişlerim',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Image.asset('assets/images/chat.png', height: 15),
                      SizedBox(width: 5),
                      Text('5 Adet değerlendirilmemiş siparişiniz var')
                    ],
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 3),
                child: Icon(
                  Icons.arrow_right,
                  color: Color.fromARGB(255, 87, 87, 87),
                  size: 30,
                ),
              )
            ],
          ),
        ));
  }
}
