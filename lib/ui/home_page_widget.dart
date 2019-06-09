import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeWidgetState();
  }
}

class HomeWidgetState extends State<HomePageWidget> {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlayer = false;
  String tip = "暂无";
  var audioList = [
    "http://psm0x72j3.bkt.clouddn.com/1-1.mp3",
    "http://psm0x72j3.bkt.clouddn.com/1-2.mp3",
    "http://psm0x72j3.bkt.clouddn.com/1-3.mp3",
    "http://psm0x72j3.bkt.clouddn.com/1-4.mp3",
    "http://psm0x72j3.bkt.clouddn.com/1-5.mp3",
    "http://psm0x72j3.bkt.clouddn.com/814_B6_081208_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/819_B7_081908_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/824_B8_082608_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/829_B9_090208_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/834_B10_090908_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/839_B11_091608_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/844_B12_092308_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/849_B13_093008_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/854_B14_100708_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/859_B_S4L15_101408_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/864_B_S4L16_102108_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/869_B_S4L17_102808_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/874_B_S4L18_110408_jpod101.mp3",
    "http://psm0x72j3.bkt.clouddn.com/879_B_S4L19_111108_jpod101.mp3"
  ];

  @override
  Widget build(BuildContext context) {
    setState(() {
      this.isPlayer = isPlayer;
    });

    return
//      new Column(children: [
//      new Text("主页"),
//      new RaisedButton(
//        child: Text(txt),
//        onPressed: () {
//          play("http://psm0x72j3.bkt.clouddn.com/1-1.mp3");
//        },
//      ),
      new ListView(
        children: <Widget>[
          new Text("正在播放：" + tip),
          ListTile(title: Text('1-1'),
            onTap: () {
              play(audioList[0]);
              setState(() {
                tip = "1-1";
              });
            },),
          ListTile(title: Text('1-2'),
            onTap: () {
              play(audioList[1]);
              setState(() {
                tip = "1-2";
              });
            },
          ),
          ListTile(title: Text('1-3'),
            onTap: () {
              play(audioList[2]);
              setState(() {
                tip = "1-3";
              });
            },
          ),
          ListTile(title: Text('1-4'),
            onTap: () {
              play(audioList[3]);
              setState(() {
                tip = "1-4";
              });
            },
          ),
          ListTile(title: Text('1-5'),
            onTap: () {
              play(audioList[4]);
              setState(() {
                tip = "1-5";
              });
            },
          ),
          ListTile(title: Text('1-6'),
            onTap: () {
              play(audioList[5]);
              setState(() {
                tip = "1-6";
              });
            },
          ),
          ListTile(title: Text('1-7'),
            onTap: () {
              play(audioList[6]);
              setState(() {
                tip = "1-7";
              });
            },
          ),
          ListTile(title: Text('1-8'),
            onTap: () {
              play(audioList[7]);
              setState(() {
                tip = "1-8";
              });
            },
          ),
          ListTile(title: Text('1-9'),
            onTap: () {
              play(audioList[8]);
              setState(() {
                tip = "1-9";
              });
            },
          ),
          ListTile(title: Text('1-10'),
            onTap: () {
              play(audioList[9]);
              setState(() {
                tip = "1-10";
              });
            },),
          ListTile(title: Text('Title11')),
          ListTile(title: Text('Title12')),
          ListTile(title: Text('Title13')),
          ListTile(title: Text('Title14')),
          ListTile(title: Text('Title15')),
          ListTile(title: Text('Title16')),
          ListTile(title: Text('Title17')),
          ListTile(title: Text('Title18')),
          ListTile(title: Text('Title19')),
        ],
      );
//    ]);
  }

  Future<void> play(url) async {
    int result = await audioPlayer.play(url);
    if (result == 1) {
      print("play ok");
    } else {
      print("play err");
    }
  }
}
