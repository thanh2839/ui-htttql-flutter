import 'package:flutter/material.dart';
import 'package:web_htttql_flutter/model/menu_model.dart';

class SideMenuData {
  final menu = const <MenuModel>[
    MenuModel(icon: Icons.home, title: 'Dashboard'),
    MenuModel(icon: Icons.add_shopping_cart, title: "Đơn đã thanh toán"),
    MenuModel(icon: Icons.logout, title: 'Quay lại'),
  ];
}
