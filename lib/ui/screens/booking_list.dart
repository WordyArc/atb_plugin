import 'package:atb_plugin/globals.dart';
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
              child: const Center(
                child: Text(
                  'г. Владивосток, ДВФУ, к. G',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
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
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
            child: GestureDetector (
              child: SizedBox(
                width: 300,
                height: 56,
                child: Row(
                  children: [
                    Container(
                      height: 56,
                      width: 4,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4),)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'title',
                            style: TextStyle(
                              color: Color(0xFF090C17),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'subtitle',
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}
