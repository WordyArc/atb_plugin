import 'package:atb_plugin/globals.dart';
import 'package:atb_plugin/ui/widgets/booking_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_elevated_button.dart';

class BookingList extends StatefulWidget {
  void onPressed() {}

  const BookingList({Key? key}) : super(key: key);

  @override
  State<BookingList> createState() => _BookingListState();
}

class _BookingListState extends State<BookingList> {
  String _dropDownValue = 'DropDown test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 0,
          title: Center(
            child: Container(
              height: 25,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFEBEBEB),
                ),
                borderRadius: BorderRadius.circular(4),
                color: Colors.white
              ),
              child: Center(
                child: DropdownButton(
                  hint: _dropDownValue == null ? Text('Dropdown') : Text(_dropDownValue),
                  isExpanded: true,
                  iconSize: 30.0,
                  style: TextStyle(color: Colors.blue),
                  items: [
                    'г. Владивосток, ДВФУ, к. G',
                    'г. Владивосток, ДВФУ, к. G',
                    'г. Владивосток, ДВФУ, к. G',
                  ].map(
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
                )
                /*Text(
                  'г. Владивосток, ДВФУ, к. G',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),*/
              ),
            ),
          ),
          flexibleSpace: Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: atbGradient,
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
            children: [
              BookingCard(title: 'Место 1', subtitle: 'Монитор', indicatorColor: indicatorGreen, onPressed: () {} ,),
              BookingCard(title: 'Место 2', subtitle: 'Монитор, мышь, клавиатура', indicatorColor: indicatorRed, onPressed: () {} ,),
              BookingCard(title: 'Место 3', subtitle: 'iMac', indicatorColor: indicatorRed, onPressed: () {} ,),
              BookingCard(title: 'Место 4', subtitle: 'Монитор, мышь, клавиатура', indicatorColor: indicatorYellow, onPressed: () {} ,),
              BookingCard(title: 'Место 5', subtitle: 'macMini, монитор', indicatorColor: indicatorYellow, onPressed: () {} ,),
              BookingCard(title: 'Место 6', subtitle: 'Монитор, мышь, клавиатура', indicatorColor: indicatorGreen, onPressed: () {} ,),
            ],
          )
      ),
    );
  }
}
