import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class PackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;

  const PackageItem({
    Key? key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(
        vertical: 22,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 13),
          Text(
            '${amount}GB',
            style: blackTexStyle.copyWith(
              fontSize: 32,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            'Rp $price',
            style: greyTexStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
