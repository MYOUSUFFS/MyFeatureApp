import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  var listed = ["Week", "Month"];
  var currentListedItem = "Week";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: DropdownButton(
            items: listed.map((String dropDownStringItem) {
              return DropdownMenuItem(
                  value: dropDownStringItem, child: Text(dropDownStringItem));
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                currentListedItem = value!;
              });
            },
            value: currentListedItem,
          ),
        ),
      ),
    );
  }
}
