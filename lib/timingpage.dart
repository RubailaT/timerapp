 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/provider-timer.dart';
import 'package:timerapp/utils.dart';

 class Timingpage extends StatefulWidget {
  const Timingpage({Key? key}) : super(key: key);

  @override
  State<Timingpage> createState() => _TimingpageState();
}

 class _TimingpageState extends State<Timingpage> {
  @override
  Widget build(BuildContext context) {
    final providerobject=Provider.of<ProviderTimer>(context);



    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,

      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: selectedtimings.map((time) {
              return InkWell(
              onTap: ()=>providerobject.selectTime(double.parse(time)),
  child:   Expanded(
      child:   Container(
        margin: EdgeInsets.only(left: 10),
        height: 70,
        width: 50,
        decoration: int.parse(time)==providerobject.selectedtime
            ?  BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          ):BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.white, //                   <--- border color
            width: 3.0,

          ),
        ),
              child: Center(
              child: Text(
              (int.parse(time) ~/ 60).toString(),
              style: TextStyle(fontSize: 25,color:int.parse(time)==providerobject.selectedtime
              ? Colors.redAccent: Colors.white)),
              ),
              //     ? re
              // )


      ),
  ),
  );
            }).toList(),
      )),
    );




  }
}
