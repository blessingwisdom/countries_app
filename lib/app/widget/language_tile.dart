import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageTile extends StatefulWidget {
  const LanguageTile({super.key});

  @override
  State<LanguageTile> createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  String groupValue = 'English';
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Language',
                    style: themeData.textTheme.bodyText1!.copyWith(
                        fontSize: 20.sp, fontWeight: FontWeight.bold)),
                Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey.withOpacity(0.6)),
                    child: const Icon(
                      Icons.close,
                      size: 15,
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bahasa', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Bahasa",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Deutsch', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Deutsch",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('English', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "English",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fran??aise', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Fran??aise",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Italiano',
                  style: themeData.textTheme.bodyText1,
                ),
                Radio(
                  activeColor: Colors.black,
                  value: "Italiano",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Portugu??s', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Portugu??s",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('P??????????????', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "P??????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Svenska', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "Svenska",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('T??rk??e', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "T??rk??e",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('?????????', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "?????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('????????????????', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "????????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('????????????????????????', style: themeData.textTheme.bodyText1),
                Radio(
                  activeColor: Colors.black,
                  value: "????????????????????????",
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value.toString();
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
