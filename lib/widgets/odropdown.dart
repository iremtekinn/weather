import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Odropdown extends StatefulWidget {
  const Odropdown({super.key});

  @override
  State<Odropdown> createState() => _OdropdownState();
}

class _OdropdownState extends State<Odropdown> {
  String dropdownvalue = 'Tanjungsiang, Subang';
  var items = [   
    'Tanjungsiang, Subang',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width:190,
      height: 40,
      color: Colors.white,
      child:DropdownButton(dropdownColor: Colors.white,
        value: dropdownvalue,
        icon: const Icon(Icons.keyboard_arrow_down),   
         items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue){
                setState(() {
                  dropdownvalue =newValue!;
                });
              },
      )
    );
  }
}