import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yemeksepeti/widgets/account_info.dart';
import 'package:yemeksepeti/widgets/address.dart';
import 'package:yemeksepeti/widgets/carousel_banner.dart';
import 'package:yemeksepeti/widgets/create_wallet.dart';
import 'package:yemeksepeti/widgets/favorites.dart';
import 'package:yemeksepeti/widgets/menu.dart';
import 'package:yemeksepeti/widgets/previous_orders.dart';
import 'package:yemeksepeti/widgets/restaurants.dart';
import 'package:yemeksepeti/widgets/special_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color.fromARGB(255, 255, 50, 50);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        title: Image.asset('assets/images/logo.png', height: 30),
        backgroundColor: Color.fromARGB(255, 255, 50, 50),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.email),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.caretSquareRight),
            onPressed: () => null,
            tooltip: 'Market',
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AccountInfo(),
            Menu(),
            CarouselBanner(),
            Address(),
            PreviousOrders(),
            Restaurants(),
            Favorites(),
            SpecialMenu(),
            CreateWallet(),
            SizedBox(height: 10)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.utensils), label: 'Sipariş'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.search), label: 'Ara'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.shoppingBasket), label: 'Sepetim'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comments), label: 'Canlı Yardım'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Diğer'),
        ],
      ),
    );
  }
}
