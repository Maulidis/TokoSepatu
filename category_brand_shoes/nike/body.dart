import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sepatu_app/constants.dart';

import 'categorries.dart';

class body extends StatelessWidget{

  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: KdefaultPaddin),
        child: Text(
          "Sepatu Nike ",
          style: Theme.of(context)
          .textTheme
          .headline5?.copyWith(fontWeight: FontWeight.bold,),
        ),
        ),
        Categories(),
        Container(
         height: 100,
         width: 160,
         decoration: BoxDecoration(
         color: const Color(0xff7c94b6),
         )
         )
      ],
    );
  }
}
