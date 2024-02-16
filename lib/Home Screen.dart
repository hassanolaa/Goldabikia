import 'package:flutter/material.dart';
import 'package:goldabikia/Home%20Screen/DeskTopHomeScrren.dart';
import 'package:goldabikia/Home%20Screen/MobileHomeScrren.dart';
import 'package:goldabikia/ss.dart';

class HomeScrren extends StatefulWidget {

  const HomeScrren({Key? key}) : super(key: key);

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  ss nn=ss();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth>600){
        return DeskTopHomeScrren(data: nn);
      }else{
        return MobileHomeScrren(data: nn,);
      }
    });
  }
}
