import 'dart:math';

import 'package:flutter/material.dart';
import 'package:speedometer_chart/speedometer_chart.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'temp.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => HistoryState();
}

class HistoryState extends State<History> {
  String select = 'Select Duration';
  String select1 = '';
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;

  @override
  Widget build(BuildContext context) {
    String week = 'Weekly';
    String month = 'Monthly';
    String year = 'Yearly';
    String paraciane = 'Paraciane';
    String aspirin = 'Aspirin';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'History',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          toolbarHeight: 56,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          leadingWidth: 0.0,
          titleSpacing: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 163, 245, 244),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext) {
                                return SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(
                                      title: const Text(
                                        'Select Duration',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      elevation: 0,
                                      toolbarHeight: 56,
                                      automaticallyImplyLeading: false,
                                      backgroundColor: Colors.transparent,
                                      leadingWidth: 0.0,
                                      titleSpacing: 0,
                                      centerTitle: true,
                                    ),
                                    body: Column(
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    select = week;
                                                    Navigator.pop(context);
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  child: Center(
                                                    child: Text(week),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    select = month;
                                                    Navigator.pop(context);
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  child: Center(
                                                    child: Text(month),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    select = year;
                                                    Navigator.pop(context);
                                                  });
                                                },
                                                child: Container(
                                                  height: 50,
                                                  child: Center(
                                                    child: Text(year),
                                                  ),
                                                ),
                                              )
                                            ])
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            select,
                            style: const TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 35,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                    decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 163, 245, 244),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(39),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext) {
                                return SafeArea(
                                  child: Scaffold(
                                    appBar: AppBar(
                                      title: const Text(
                                        'All Medicine',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      elevation: 0,
                                      toolbarHeight: 56,
                                      automaticallyImplyLeading: false,
                                      backgroundColor: Colors.transparent,
                                      leadingWidth: 0.0,
                                      titleSpacing: 0,
                                      centerTitle: true,
                                    ),
                                    body: Column(
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                      value: true,
                                                      activeColor: Colors.green,
                                                      onChanged:
                                                          (bool? newValue) {
                                                        setState(() {
                                                          newValue = newValue!;
                                                        });
                                                      }),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        select1 = paraciane;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(paraciane),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Checkbox(
                                                      value: true,
                                                      activeColor: Colors.green,
                                                      onChanged:
                                                          (bool? newValue) {
                                                        setState(() {
                                                          newValue = newValue!;
                                                        });
                                                      }),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        select1 = aspirin;
                                                        Navigator.pop(context);
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      child: Center(
                                                        child: Text(aspirin),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ])
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: const Text(
                            "All Medicine",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            Container(
              width: 343,
              height: 127,
              decoration: ShapeDecoration(
                  color: const Color(0xFF5CE0E6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              child: const Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, top: 20),
                        child: Text(
                          "Adherene Score",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "12 Aug 2022 to 12 Sep 2022",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 210, top: 40),
                    child: SpeedometerChart(
                      dimension: 100,
                      minValue: 0,
                      maxValue: 100,
                      value: 60,
                      minTextValue: "",
                      maxTextValue: "",
                      graphColor: [Colors.blue, Colors.yellow, Colors.green],
                      pointerColor: Colors.black,
                      valueVisible: true,
                      rangeVisible: true,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 224, 230, 230),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mon,12 Sep",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 227, 239, 239),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              //mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: isChecked1,
                        activeColor: Colors.green,
                        onChanged: (bool? newValue1) {
                          setState(() {
                            isChecked1 = newValue1!;
                          });
                        }),
                    TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: const Text(
                                  'Mon 12 Sep',
                                  textAlign: TextAlign.center,
                                ),
                                alignment: Alignment.center,
                                content: Container(
                                  width: 165,
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18,
                                                        vertical: 4),
                                                decoration: ShapeDecoration(
                                                    color: Color(0xFF3DE462),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        39))),
                                                child: const Text(
                                                  '8:00AM',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 100,
                                        height: 35,
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Paraciane',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Take 5.5ml from cabinet',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: Color(0xFF898989)),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDEF9FA),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF5CE0E6)),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                        ),
                                        child: TextButton(
                                            child: const Text(
                                              'Untake',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                isChecked1 = false;
                                                Navigator.pop(context);
                                              });
                                            }),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text(
                        'Paraciane',
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: isChecked2,
                        activeColor: Colors.green,
                        onChanged: (bool? newvalue2) {
                          setState(() {
                            isChecked2 = newvalue2!;
                          });
                        }),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: const Text(
                                  'Mon 12 Sep',
                                  textAlign: TextAlign.center,
                                ),
                                alignment: Alignment.center,
                                content: Container(
                                  width: 165,
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18,
                                                        vertical: 4),
                                                decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF3DE462),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        39))),
                                                child: const Text(
                                                  '8:00AM',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 100,
                                        height: 35,
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Aspirin',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Take 5.5ml from cabinet',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: Color(0xFF898989)),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDEF9FA),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF5CE0E6)),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                        ),
                                        child: TextButton(
                                          child: const Text(
                                            'Untake',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          onPressed: () => setState(() {
                                            isChecked2 = false;
                                            Navigator.pop(context);
                                          }),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 227, 239, 239),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "11.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: isChecked3,
                        activeColor: Colors.green,
                        onChanged: (bool? newvalue3) {
                          setState(() {
                            isChecked3 = newvalue3!;
                          });
                        }),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: const Text(
                                  'Mon 12 Sep',
                                  textAlign: TextAlign.center,
                                ),
                                alignment: Alignment.center,
                                content: Container(
                                  width: 165,
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18,
                                                        vertical: 4),
                                                decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF3DE462),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        39))),
                                                child: const Text(
                                                  '8:00AM',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 100,
                                        height: 35,
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Aspirin',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Take 5.5ml from cabinet',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: Color(0xFF898989)),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDEF9FA),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF5CE0E6)),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                        ),
                                        child: TextButton(
                                          child: const Text(
                                            'Untake',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          onPressed: () => setState(() {
                                            isChecked3 = false;
                                            Navigator.pop(context);
                                          }),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 224, 230, 230),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tue,11 Sep",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 105,
                  height: 35,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 227, 239, 239),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "8.00 AM",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: isChecked4,
                        activeColor: Colors.green,
                        onChanged: (bool? newvalue4) {
                          setState(() {
                            isChecked4 = newvalue4!;
                          });
                        }),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: const Text(
                                  'Mon 12 Sep',
                                  textAlign: TextAlign.center,
                                ),
                                alignment: Alignment.center,
                                content: Container(
                                  width: 165,
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18,
                                                        vertical: 4),
                                                decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF3DE462),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        39))),
                                                child: const Text(
                                                  '8:00AM',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 100,
                                        height: 35,
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Aspirin',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Take 5.5ml from cabinet',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: Color(0xFF898989)),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDEF9FA),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF5CE0E6)),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                        ),
                                        child: TextButton(
                                          child: const Text(
                                            'Untake',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          onPressed: () => setState(() {
                                            isChecked4 = false;
                                            Navigator.pop(context);
                                          }),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ],
                )
              ],
            ),
            Row(
              // mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                        value: isChecked5,
                        activeColor: Colors.green,
                        onChanged: (bool? newValue5) {
                          setState(() {
                            isChecked5 = newValue5!;
                          });
                        }),
                    TextButton(
                      child: const Text(
                        "Aspirin",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: const Text(
                                  'Tue 11 Sep',
                                  textAlign: TextAlign.center,
                                ),
                                alignment: Alignment.center,
                                content: Container(
                                  width: 165,
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(39))),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 18,
                                                        vertical: 4),
                                                decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF3DE462),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        39))),
                                                child: const Text(
                                                  '8:00AM',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontFamily: 'Nunito',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 100,
                                        height: 35,
                                        child: const Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Aspirin',
                                              style: TextStyle(
                                                color: Color(0xFF333333),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Take 5.5ml from cabinet',
                                        textAlign: TextAlign.center,
                                        style:
                                            TextStyle(color: Color(0xFF898989)),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: const Color(0xFFDEF9FA),
                                          shape: RoundedRectangleBorder(
                                              side: const BorderSide(
                                                  width: 2,
                                                  color: Color(0xFF5CE0E6)),
                                              borderRadius:
                                                  BorderRadius.circular(70)),
                                        ),
                                        child: TextButton(
                                          child: const Text(
                                            'Untake',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          //BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Hisrory'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
        ]),
      ),
    );
  }
}
