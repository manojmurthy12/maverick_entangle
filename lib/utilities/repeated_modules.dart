import 'package:flutter/material.dart';

Container nothingtoshow() {
  return Container(
    child: Center(
      child: Column(
        children: [
          Image.asset('images/empty.jpg'),
          Text(
            'Nothing to show yet',
            style: TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    ),
  );
}

Container nothingtoshow2() {
  return Container(
    child: Center(
      child: Column(
        children: [
          Image.asset('images/empty2.jpg'),
          Text(
            'Nothing to show yet',
            style: TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    ),
  );
}