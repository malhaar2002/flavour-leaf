import 'package:flutter/material.dart';

String _dropDownValue = 'Delivery Location';

class DeliveryDropdown extends StatefulWidget {
  const DeliveryDropdown({super.key});

  @override
  State<DeliveryDropdown> createState() => _DeliveryDropdownState();
}

class _DeliveryDropdownState extends State<DeliveryDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text(
        _dropDownValue,
      ),
      isExpanded: true,
      iconSize: 30.0,
      items: ['Flavours of the North', 'Banana Leaf', 'Hostel'].map(
        (val) {
          return DropdownMenuItem<String>(
            value: val,
            child: Text(val),
          );
        },
      ).toList(),
      onChanged: (val) {
        setState(
          () {
            _dropDownValue = val!;
          },
        );
      },
    );
  }
}