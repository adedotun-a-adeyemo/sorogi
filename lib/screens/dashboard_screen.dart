import 'package:flutter/material.dart';
import 'package:sorogi/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sorogi/widgets/tile_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sorogi/widgets/tile_content.dart';

final _firestore = FirebaseFirestore.instance;
User loggedInUser;

class DashboardScreen extends StatefulWidget {
  static String id = 'dashboard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
    print('The users account is: ${loggedInUser.email}');
  }

  void getCurrentUser() {
    final user = _auth.currentUser;
    if (user != null) {
      loggedInUser = user;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainThemeColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(75.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Column(
                  children: [
                    Text(
                      'Healthy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.check_rounded,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      backgroundColor: Colors.lightGreenAccent[400],
                      radius: 25.0,
                    )
                  ],
                )),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  // topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TileButton(
                            color: Colors.white,
                            onPressed: () {
                              print('button was touched');
                            },
                            cardChild: TileContent(
                              icon: FontAwesomeIcons.tint,
                              iconColor: kPrimaryColor,
                              label1: 'Blood Glucose',
                              label2: '133 mg/dL',
                            ),
                          ),
                        ),
                        Expanded(
                          child: TileButton(
                            color: Colors.white,
                            onPressed: () {
                              print('button was touched');
                            },
                            cardChild: TileContent(
                              icon: FontAwesomeIcons.heartbeat,
                              iconColor: kPrimaryColor,
                              label1: 'Blood Pressure',
                              label2: '125 mmHg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TileButton(
                            color: Colors.white,
                            onPressed: () {
                              print('button was touched');
                            },
                            cardChild: TileContent(
                              icon: FontAwesomeIcons.lungs,
                              iconColor: kPrimaryColor,
                              label1: 'Blood Oxygen',
                              label2: '100%',
                            ),
                          ),
                        ),
                        Expanded(
                          child: TileButton(
                            color: Colors.white,
                            onPressed: () {
                              print('button was touched');
                            },
                            cardChild: TileContent(
                              icon: FontAwesomeIcons.weight,
                              iconColor: kPrimaryColor,
                              label1: 'Weight',
                              label2: '150 lb',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
