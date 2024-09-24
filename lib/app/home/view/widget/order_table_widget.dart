import 'package:capten/components/constants/app_them.dart';
import 'package:flutter/material.dart';

class OrderTableWidget extends StatelessWidget {
  const OrderTableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.grey), // Add borders
      columnWidths: const {
        0: FlexColumnWidth(),
        1: FixedColumnWidth(50),
        2: FixedColumnWidth(50),
        3: FlexColumnWidth(),
      },
      children: [
        TableRow(
          decoration: BoxDecoration(
            color: AppThem.white, // Add background color to header row
          ),
          children: [
            Center(
              child: Text(
                'الصنف',
                style: TextStyle(color: AppThem.black),
              ),
            ),
            Center(
              child: Text(
                'السعر',
                style: TextStyle(color: AppThem.black),
              ),
            ),
            Center(
              child: Text(
                'الكمية',
                style: TextStyle(color: AppThem.black),
              ),
            ),
            Center(
              child: Text(
                'الاجمالي',
                style: TextStyle(color: AppThem.black),
              ),
            ),
          ],
        ),
        TableRow(children: [
          Center(
              child: Text(
            'حبة دجاج شواية',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '15000',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '2',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '2500',
            style: TextStyle(color: AppThem.white),
          )),
        ]),
        TableRow(children: [
          Center(
              child: Text(
            'نفر رز',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '500',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '3',
            style: TextStyle(color: AppThem.white),
          )),
          Center(
              child: Text(
            '1500',
            style: TextStyle(color: AppThem.white),
          )),
        ]),
      ],
    );
  }
}
