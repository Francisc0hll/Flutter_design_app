import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(children: [
      TableRow(children: [
        _SingleCard(
            color: Colors.blue, icon: Icons.border_all, text: 'General'),
        _SingleCard(
            color: Colors.pink, icon: Icons.traffic_outlined, text: 'transport')
      ]),
      TableRow(children: [
        _SingleCard(
            color: Colors.green, icon: Icons.shop_sharp, text: 'shopping'),
        _SingleCard(
            color: Colors.blueGrey, icon: Icons.list_alt, text: 'whislist')
      ]),
      TableRow(children: [
        _SingleCard(
            color: Colors.yellowAccent,
            icon: Icons.sailing_outlined,
            text: 'Sale'),
        _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.safety_divider_outlined,
            text: 'Test')
      ]),
      TableRow(children: [
        _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.card_travel_outlined,
            text: 'creditCard'),
        _SingleCard(
            color: Colors.redAccent, icon: Icons.credit_card, text: 'bill')
      ]),
      TableRow(children: [
        _SingleCard(
            color: Colors.cyanAccent,
            icon: Icons.money_off_outlined,
            text: 'Credit'),
        _SingleCard(
            color: Colors.brown,
            icon: Icons.contact_mail_outlined,
            text: 'Contact')
      ]),
    ]);
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: this.color,
                  child: Icon(this.icon, size: 32, color: Colors.white),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(
                  this.text,
                  style: TextStyle(color: this.color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
