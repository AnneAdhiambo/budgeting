// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_app/expence.dart';

class money_app extends StatefulWidget {
  const money_app({super.key});

  @override
  State<money_app> createState() => _money_appState();
}

class _money_appState extends State<money_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 21, 206),
      body: Stack(
        children: [
          ListView(children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black12,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "TRANSACTIONS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "All Transactions",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'yesterday',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        ' xxx   .',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          //LISTVIEW
                          Expanded(
                            child: ListView(
                              children: [
                                expence(
                                  icon: Icons.person,
                                  backgrounrColor:
                                      Color.fromARGB(255, 43, 11, 182),
                                  title: 'CAR',
                                  sub_title: 'Fuel',
                                  amount: '\$120.00',
                                ),
                                expence(
                                  icon: Icons.coffee,
                                  backgrounrColor:
                                      const Color.fromARGB(255, 5, 126, 225),
                                  title: 'FOOD',
                                  sub_title: 'Bread',
                                  amount: '\$6.30',
                                ),
                                expence(
                                  icon: Icons.phone_android,
                                  backgrounrColor: Colors.blueGrey,
                                  title: 'MOBILE',
                                  sub_title: 'Phone',
                                  amount: '\$20.00',
                                ),
                                expence(
                                  icon: Icons.panorama_vertical_select_outlined,
                                  backgrounrColor: Colors.orange,
                                  title: 'PRESENT',
                                  sub_title: 'Picture',
                                  amount: '\$360.00',
                                ),
                                expence(
                                  icon: Icons.pets,
                                  backgrounrColor:
                                      const Color.fromARGB(255, 180, 57, 202),
                                  title: 'PET',
                                  sub_title: 'FEED',
                                  amount: '\$36.40',
                                ),
                              ],
                            ),
                          ),
                          
                          Container(
                          height: 20,
                          width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    )))
          ]),
          Positioned(
            top: 150,
            bottom: 360,
            left: 330,
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 18, 111, 186),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
