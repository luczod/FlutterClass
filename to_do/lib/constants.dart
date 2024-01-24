import 'package:flutter/material.dart';

const kBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20.0),
    topRight: Radius.circular(20.0),
  ),
);

const kInputDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.black54),
  ),
  fillColor: Colors.black54,
);

const kCircleAvatar = CircleAvatar(
  backgroundColor: Colors.white,
  radius: 30.0,
  child: Icon(
    Icons.list,
    size: 30.0,
    color: Colors.lightBlueAccent,
  ),
);

const kTitle = Text(
  'To Do',
  style: TextStyle(
    color: Colors.white,
    fontSize: 50.0,
    fontWeight: FontWeight.w700,
  ),
);

const kLabel = Text(
  'Add Task',
  textAlign: TextAlign.center,
  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0, fontWeight: FontWeight.w700),
);

const kButtonText = Text(
  'Add',
  style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w700),
);

/*const kButtonStyle = ButtonStyle(
  backgroundColor: Colors.lightBlue,
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
)*/
