import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
var vid_index;

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textEditingControllerUrl = new TextEditingController();
  TextEditingController textEditingControllerId = new TextEditingController();
  VoidCallback listener;

  @override
  initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
  }

  void playYoutubeVideo() {
    switch (vid_index){
      case 1:
      FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "AIzaSyApFMpaqv7ytkP02w9bds7mPHLVEmMmWAw",
      videoUrl: "https://youtu.be/ngvjk2pk9Qo?list=RDngvjk2pk9Qo",
    );

      break;
      case 2:
        FlutterYoutube.playYoutubeVideoByUrl(
          apiKey: "AIzaSyApFMpaqv7ytkP02w9bds7mPHLVEmMmWAw",
          videoUrl: "https://www.youtube.com/watch?v=r6zIGXun57U&list=RDngvjk2pk9Qo&index=2",
        );break;
      case 3:
        FlutterYoutube.playYoutubeVideoByUrl(
          apiKey: "AIzaSyApFMpaqv7ytkP02w9bds7mPHLVEmMmWAw",
          videoUrl: "https://www.youtube.com/watch?v=NfUeUCErCmQ&list=RDngvjk2pk9Qo&index=4",
          fullScreen: true,

        );
        if(FlutterYoutube.onVideoEnded.toString()=="true") {print ("done");}

        ;break;
  }}

/*
  void playYoutubeVideoEdit() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: "<API_KEY>",
      videoUrl: textEditingControllerUrl.text,
    );
  }

  void playYoutubeVideoIdEdit() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoById(
      apiKey: "<API_KEY>",
      videoId: textEditingControllerId.text,
    );
  }

  void playYoutubeVideoIdEditAuto() {
    FlutterYoutube.onVideoEnded.listen((onData) {
      //perform your action when video playing is done
    });

    FlutterYoutube.playYoutubeVideoById(
        apiKey: "<API_KEY>",
        videoId: textEditingControllerId.text,
        autoPlay: true);
  }
*/

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Youtube Player'),
        ),
        body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[

              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text("Play Video 1"),
                    onPressed: (){
                      vid_index=1;
                      playYoutubeVideo();}),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text("Play Video 2"),
                    onPressed: (){
                      vid_index=2;
                      playYoutubeVideo();}),
              ),

              new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new RaisedButton(
                    child: new Text("Play Video 3"),
                    onPressed: (){
                      vid_index=3;
                      playYoutubeVideo();
                      print("forced");}),
              ),

            ],
          ),
        ),
      ),
    );
  }
}