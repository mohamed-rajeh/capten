import 'package:capten/app/home/view/temp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CaptenDrawerWidget extends StatelessWidget {
  const CaptenDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: const Text("رصيدك"),
                trailing: Text(
                  " 9000 ريال",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text("ارشيف الطلبات"),
                onTap: () => Get.to(() => const TempOrdersScreen()),
              ),
              const SizedBox(height: 16),
              const ListTile(
                title: Text("تسجيل خروج"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
