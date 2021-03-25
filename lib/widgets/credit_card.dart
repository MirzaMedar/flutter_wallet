import 'package:flutter/material.dart';

class CreditCard extends StatefulWidget {
  String maskedCcNumber;
  String validity;
  String customer;

  CreditCard({this.maskedCcNumber, this.validity, this.customer});

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Container(
            height: 250,
            width: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 190, 42, 1),
                  Color.fromRGBO(255, 133, 27, 1),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 250,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(8, 38, 70, 1),
                  Color.fromRGBO(13, 64, 118, 1),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'MONERIO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        letterSpacing: 2,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'images/chip.png',
                  width: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.maskedCcNumber,
                      style: TextStyle(
                        fontFamily: 'CREDC',
                        fontSize: 20,
                        wordSpacing: 6,
                        letterSpacing: 3,
                        color: Color.fromRGBO(181, 185, 198, 1),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.validity,
                            style: TextStyle(
                              fontFamily: 'CREDC',
                              wordSpacing: 8,
                              letterSpacing: 3,
                              color: Color.fromRGBO(181, 185, 198, 1),
                            ),
                          ),
                          Text(
                            widget.customer,
                            style: TextStyle(
                              fontFamily: 'CREDC',
                              wordSpacing: 8,
                              letterSpacing: 3,
                              color: Color.fromRGBO(181, 185, 198, 1),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'images/mastercard-2.png',
                          width: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
