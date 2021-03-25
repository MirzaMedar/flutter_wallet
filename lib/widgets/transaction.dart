import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  IconData icon;
  String iconTitle;
  String itemTitle;
  String amount;
  Color amountColor;
  String description;

  Transaction(
      {this.icon,
      this.iconTitle,
      this.itemTitle,
      this.amount,
      this.amountColor,
      this.description});

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  bool containerExpanded = false;
  double containerHeight = 80;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          this.containerExpanded = !this.containerExpanded;
          this.containerHeight = this.containerExpanded ? 80 : 200;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        padding: EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 10),
        height: containerHeight,
        width: MediaQuery.of(context).size.width - 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(8, 63, 114, 1),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            widget.icon,
                            color: Colors.white,
                          ),
                          Text(
                            widget.iconTitle,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.itemTitle,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey[800],
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'MONERIO CARD',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(172, 158, 120, 1),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                Text(
                  widget.amount,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: widget.amountColor,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  'DESCRIPTION:',
                  style:
                      TextStyle(color: Colors.grey[800], fontFamily: 'Poppins'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Text(
                  widget.description,
                  style:
                      TextStyle(color: Colors.grey[800], fontFamily: 'Poppins'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
