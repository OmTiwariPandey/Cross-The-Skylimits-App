import 'package:cts2/main.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoApp extends StatefulWidget {
  @override
  _YoutubeVideoAppState createState() => _YoutubeVideoAppState();
}

class _YoutubeVideoAppState extends State<YoutubeVideoApp> {
  late YoutubePlayerController _controller;


  fetchVideoCode() async {
    final res = await supabase.from('youtube').select('video_code').eq('id', '1').single();
    final ytCode = res['video_code'] as String;
    return ytCode;

  }
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'afBcqwg5TaU', // Replace with the video id you want to play.
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        );
      
  }
}