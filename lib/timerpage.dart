import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/card.dart';
import 'package:timerapp/play/pause.dart';
import 'package:timerapp/provider-timer.dart';
import 'package:timerapp/timingpage.dart';

 class Timerpage extends StatefulWidget {
  const Timerpage({Key? key}) : super(key: key);

  @override
  State<Timerpage> createState() => _TimerpageState();
 }
TextStyle txts=TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 70);
class _TimerpageState extends State<Timerpage> {
  @override
  Widget build(BuildContext context) {
    final providerobject=Provider.of<ProviderTimer>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xcffD05050),
title:          Text("Timer",style:TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: (){
              Provider.of<ProviderTimer>(context,listen: false).reset();
            },
                        icon: Icon(Icons.refresh,size: 50,color: Colors.white,)),
          )
        ],
      ),
      backgroundColor: Color(0xcffD05050),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Cardpage(),

              SizedBox(height: 50,),
              Timingpage(),
              SizedBox(height: 30,),
              PlayPause(),





            ],
          ),
        ),
      ),
    );
  }
}
