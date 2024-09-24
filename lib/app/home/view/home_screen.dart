import 'package:capten/app/home/model/order_model.dart';
import 'package:capten/app/home/view/widget/capten_drawer_widget.dart';
import 'package:capten/app/home/view/widget/darkmode_button.dart';
import 'package:capten/app/home/view/widget/orders_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Order> orders = [
      Order(2, 5000.2, "الحمدي", "777777777",
          name: "عبده علي", state: "قيد المراجعه", date: DateTime.now()),
      Order(4, 4000.2, "السرايا", "777777777",
          name: "حسن احمد", state: "قيد المراجعه", date: DateTime.now()),
      Order(1, 2000.2, "الشرق", "777777777",
          name: "امحسينة", state: "تم", date: DateTime.now()),
    ];

    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      appBar: appbar(context, scaffoldKey),
      drawer: const CaptenDrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        // the list view of orders
        child: OrdersListView(orders: orders),
      ),
    );
  }

  AppBar appbar(BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: IconButton(
        onPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        icon: Icon(
          Icons.manage_accounts,
          size: 28,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      title: const Text("الكابتن محمد محسن"),
      actions: const [DarkModeButon()],
    );
  }
}

