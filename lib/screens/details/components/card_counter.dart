// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../../constants.dart';

class CardCunter extends StatefulWidget {
  const CardCunter({super.key});

  @override
  State<CardCunter> createState() => _CardCunterState();
}

class _CardCunterState extends State<CardCunter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1) {
              setState(
                () {
                  numOfItems--;
                },
              );
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            // menampilkan angka mulai dari 01 02 sampai 09
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        )
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: Padding(
        padding: EdgeInsets.zero,
        child: OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Icon(icon),
        ),
      ),
    );
  }
}
