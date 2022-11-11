// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget divider() {
    return Divider(
      thickness: 1,
      color: Colors.grey.shade700,
    );
  }

  Widget sized() {
    return SizedBox(
      height: 10,
    );
  }

  Widget sized1() {
    return SizedBox(
      height: 5,
    );
  }

  Widget row({
    required String key,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          textAlign: TextAlign.right,
          value,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Color(0xff262626),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.white,
                  size: 34,
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 75, 66, 38),
                radius: 40,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 114, 97, 44),
                  radius: 35,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffffc205),
                    child: Icon(
                      Icons.check,
                      color: Color(0xff262626),
                      size: 40,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    sized(),
                    sized(),
                    Text(
                      "Transaction Successful",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sized1(),
                    Text(
                      "Tid: 030953894082",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    sized1(),
                    Text(
                      "On October 23, 2022 at 18:56",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    sized(),
                    divider(),
                    sized(),
                    Text(
                      "Rs. 4000",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sized1(),
                    Text(
                      "Transferred to another Wallet",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    sized(),
                    divider(),
                    sized(),
                    row(key: "Fee", value: "0.00"),
                    sized(),
                    divider(),
                    sized(),
                    row(
                      key: "To",
                      value:
                          "HBL\nHabib Bank Limited\n0179791618303\n03039089804\nMiscellaneous Payments",
                    ),
                    sized(),
                    divider(),
                    sized(),
                    row(key: "From", value: "Ahmad Tariq\n03039089804"),
                    sized(),
                    sized(),
                    sized(),
                    sized(),
                    sized(),
                    sized1(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Security Paid via",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://www.simpaisa.com/assets/img/partners/jazzcash.png"),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "Share",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                        Icon(
                          Icons.save_alt,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 8,),
                        Text(
                          "Save",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
    );
  }
}
