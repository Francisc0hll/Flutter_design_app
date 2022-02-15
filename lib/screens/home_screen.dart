import 'package:flutter/material.dart';

import 'package:disenos_1/widgets/background.dart';
import 'package:disenos_1/widgets/card_table.dart';
import 'package:disenos_1/widgets/custom_bottom_navigation.dart';
import 'package:disenos_1/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Backgound(), _Homebody()],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _Homebody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
