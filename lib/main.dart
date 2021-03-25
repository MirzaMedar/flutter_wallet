import 'package:flutter/material.dart';
import 'package:flutter_card/widgets/credit_card.dart';
import 'package:flutter_card/widgets/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Monerio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromRGBO(8, 38, 70, 1)
          //Color.fromRGBO(172, 158, 120, 1),
          ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 30,
                  right: 30,
                ),
                margin: EdgeInsets.all(10),
                height: 80,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Mirza',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey[800],
                              fontSize: 20),
                        ),
                        Text(
                          'Wed, 24 March',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey[800],
                              fontSize: 20),
                        )
                      ],
                    ),
                    Icon(
                      Icons.notifications_on_outlined,
                      size: 30,
                      color: Color.fromRGBO(172, 158, 120, 1),
                    ),
                  ],
                ),
              ),
              CreditCard(customer: 'MIRZA MEDAR', validity: '12/25', maskedCcNumber: '5123 67XX XXXX XX08',),
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 20,
                  right: 20,
                ),
                margin: EdgeInsets.all(10),
                height: 400,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last transactions',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.grey[800],
                                fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Transaction(
                            iconTitle: 'Food',
                            icon: Icons.fastfood_outlined,
                            itemTitle: 'McDonald\'s',
                            amount: '- \$13',
                            amountColor: Colors.red[400],
                            description:
                                'Hanging out with friends\n\t - 2x Grand Big Mac\n\t - 2x Coca Cola',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Transaction(
                              iconTitle: 'Car',
                              icon: Icons.car_repair,
                              itemTitle: 'Oil change',
                              amount: '- \$130',
                              amountColor: Colors.red[400],
                              description: 'Car service\n\t - Castrol 5W30 \$100\n\t - Oil filter \$30',),
                          SizedBox(
                            height: 10,
                          ),
                          Transaction(
                              iconTitle: 'Job',
                              icon: Icons.laptop_mac_outlined,
                              itemTitle: 'Free. project',
                              amount: '+ \$800',
                              amountColor: Colors.green[400],
                              description: 'Monerio project',),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
