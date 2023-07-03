 import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timerapp/provider-timer.dart';

class PlayPause extends StatefulWidget {
  const PlayPause({Key? key}) : super(key: key);

  @override
  State<PlayPause> createState() => _PlayPauseState();
}

class _PlayPauseState extends State<PlayPause> {
  @override
  Widget build(BuildContext context) {
    final providerobject=Provider.of<ProviderTimer>(context);
    return Container(
      width: 50,
      height: 100,
      decoration: BoxDecoration(color: Colors.black26,shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          icon: providerobject.timerplaying?
              Icon(Icons.pause)
              :Icon(Icons.play_arrow_sharp),
          color: Colors.white,
          iconSize: 35,
          onPressed: (){
            providerobject.timerplaying
                ? Provider.of<ProviderTimer>(context, listen: false).pause()
                : Provider.of<ProviderTimer>(context, listen: false).start();
          },
        ),
      ),
    );
  }
}
