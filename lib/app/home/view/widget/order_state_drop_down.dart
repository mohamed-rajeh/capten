import 'package:flutter/material.dart';

class OrderStateDropDownMenu extends StatefulWidget {
  const OrderStateDropDownMenu({super.key});

  @override
  State<OrderStateDropDownMenu> createState() => _OrderStateDropDownMenuState();
}

class _OrderStateDropDownMenuState extends State<OrderStateDropDownMenu> {
  String? selectedType;

  @override
  Widget build(BuildContext context) {
    List<String> types = [
      "تم استلام الطلب",
      "قيد التحضير",
      "في الطريق",
      "تم التوصيل",
    ];

    return DropdownButton<String>(
      hint: const Text('حالة الطلب'),
      borderRadius: BorderRadius.zero,
      alignment: Alignment.center,
      
      underline: const SizedBox.shrink(),
      isDense: true,
      value: selectedType,
      onChanged: (value) {
        setState(() {
          selectedType = value;
        });
      },
      items: types.map<DropdownMenuItem<String>>((value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
