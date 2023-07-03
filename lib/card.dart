import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/provider-timer.dart';
import 'package:timerapp/timerpage.dart';

class Cardpage extends StatelessWidget {
  const Cardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final cardobject=Provider.of<ProviderTimer>(context);
  final seconds=  cardobject.currentDuartion%60;

    return  Column(
        children: [


SizedBox(height: 20,),
                  Text("Focus",style: txts,),
            SizedBox(height: 50,),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                              Expanded(

                                child: Container(

                                  height: MediaQuery.of(context).size.height/4,
                                 width: MediaQuery.of(context).size.width/2,


                        child: Card(
                                  elevation: 25,color: Colors.white,
                          shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                          ),
                        child: Center(
                          child: Text((cardobject.currentDuartion~/60).toString(),
    style:TextStyle(color: (Color(0xcffD05050)),fontSize: 60,fontWeight: FontWeight.bold),)),

                          ),





                      ),


    ),


                              Text(":",style: txts,),

                              Expanded(

                                child: Container(

                                  height: MediaQuery.of(context).size.height/4,
                                  width: MediaQuery.of(context).size.width/2,
                                      child:Card(
                                        elevation: 28,color: Colors.white,
                                        shape: OutlineInputBorder(

                                          borderRadius: BorderRadius.circular(10),
                                        ),

                                        child: Center(
                                          child: Text(
                                            seconds==0?"${seconds.round()}0":
                                            (seconds.round()).toString(),style:TextStyle(color: (Color(0xcffD05050)),fontSize: 60,fontWeight: FontWeight.bold

                                          ),
                                        ),


                                      ),
                                    ),
                              ),
                              ),

                              ],
                              ),
                 ),
                            ],
                          );









  }
}
