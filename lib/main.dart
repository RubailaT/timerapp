
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/provider-timer.dart';
import 'package:timerapp/timerpage.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (context)=>ProviderTimer(),

child: MaterialApp(
      debugShowCheckedModeBanner: false,
     home:Timerpage(),
    )
  )
  );
  }

