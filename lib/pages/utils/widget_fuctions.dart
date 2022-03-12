
import 'package:flutter/material.dart';

void navigateToPageWithReplacement(BuildContext context,Widget widget){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>widget));
}

void navigateToPageWithoutReplacement(BuildContext context,Widget widget){

  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
}