import 'package:flutter/material.dart';

class ContinentTile extends StatefulWidget {
  final String title;
  const ContinentTile({super.key, required this.title});

  @override
  State<ContinentTile> createState() => _ContinentTileState();
}

class _ContinentTileState extends State<ContinentTile> {
  bool? checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Checkbox(
              value: checkValue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              activeColor: Colors.purple,
              onChanged: (bool? newValue) {
                setState(() {
                  checkValue = newValue;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
