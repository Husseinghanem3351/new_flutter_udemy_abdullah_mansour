import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class AdaptiveIndicator  extends StatelessWidget {
  const AdaptiveIndicator ({super.key});

  @override
  Widget build(BuildContext context) {
    if(os=='android')
    return CircularProgressIndicator();
    return CupertinoActivityIndicator();
  }
}
