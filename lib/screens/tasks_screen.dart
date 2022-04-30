import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widget/task_list.dart';

class TasksScreens extends StatelessWidget {
  // const TaskScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0288D1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff03A9F4),
        child: Icon(Icons.add),
        onPressed: () {  },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0, bottom: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(Icons.list,
                  size: 30.0,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 20.0),
                Text('TODO !',
                  style: TextStyle(color: Colors.white,
                    fontSize: 35.0,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w700,),
                ),
                Text('12 Tasks',
                  style: TextStyle(color: Colors.white,
                    fontSize: 18.0,
                    fontFamily: 'NunitoSans-ExtraBold',),
                ),
              ],
            ),),
          Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(20.0),
                         topLeft: Radius.circular(20.0)),
                  ),
                child: TasksList(),
              ),
          ),
        ],
      ),

    );
  }
}
