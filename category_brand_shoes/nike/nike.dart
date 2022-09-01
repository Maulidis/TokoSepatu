import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sepatu_app/category_brand_shoes/nike/body.dart';
import 'package:sepatu_app/constants.dart';
import 'package:sepatu_app/user.dart';

class nike extends StatefulWidget {
  const nike({Key? key}) : super(key: key);

  @override
  State<nike> createState() => _nikeState();
}

class _nikeState extends State<nike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: body(),
    );
    
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: (){
        Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => User()));
      },
      ),
      actions: <Widget>[
        IconButton(
        icon: SvgPicture.asset(
        "assets/icons/search.svg", 
        color: KTextColor,
        ),
        onPressed: () {},
      ),

      IconButton(
          icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: KTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: KdefaultPaddin /2,)
      ],
      
    );
  }
}