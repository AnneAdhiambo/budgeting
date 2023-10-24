import 'package:flutter/material.dart';

class expence extends StatelessWidget {
  final icon;
  final String title;
  final String sub_title;
  final String amount;
  final backgrounrColor;


  const expence({super.key,
  required this.icon,
  required this.title,
  required this.sub_title,
  required this.amount,
  required this.backgrounrColor,
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 49,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor:backgrounrColor,
                      child: Icon(
                       icon,
                        color: Colors.grey[100],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Text(
                           sub_title,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // Expanded(child: Container()),
                  Text(
                     amount,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
