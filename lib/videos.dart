import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:video_player/video_player.dart';

class VideoSection extends StatefulWidget {
  const VideoSection({Key? key}) : super(key: key);

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  String url1 =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  String url2 =
      'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4';
  String url3 =
      'https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_1920_18MG.mp4';
  String url4 =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4';
  String url5 =
      'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_30mb.mp4';

  late VideoPlayerController _videoController1;
  late VideoPlayerController _videoController2;
  late VideoPlayerController _videoController3;
  late VideoPlayerController _videoController4;
  late VideoPlayerController _videoController5;
  bool init1 = false;
  bool init2 = false;
  bool init3 = false;
  bool init4 = false;
  bool init5 = false;

  @override
  void initState() {
    super.initState();
    getFile();
  }

  Future<void> getFile() async {
    final file1 = await DefaultCacheManager().getSingleFile(url1);
    final file2 = await DefaultCacheManager().getSingleFile(url2);
    final file3 = await DefaultCacheManager().getSingleFile(url3);
    final file4 = await DefaultCacheManager().getSingleFile(url4);
    final file5 = await DefaultCacheManager().getSingleFile(url5);
    _videoController1 = VideoPlayerController.file(file1)
      ..initialize().then((value) {
        print('initiazed');
        setState(() {
          init1 = true;
          _videoController1.play();
          print('playing');
        });
      });

    _videoController2 = VideoPlayerController.file(file2)
      ..initialize().then((value) {
        print('initiazed');
        setState(() {
          init2 = true;

          _videoController2.play();
          print('playing');
        });
      });
    _videoController3 = VideoPlayerController.file(file3)
      ..initialize().then((value) {
        print('initiazed');
        setState(() {
          init3 = true;

          _videoController3.play();
          print('playing');
        });
      });
    _videoController4 = VideoPlayerController.file(file4)
      ..initialize().then((value) {
        print('initiazed');
        setState(() {
          init4 = true;

          _videoController4.play();
          print('playing');
        });
      });
    _videoController5 = VideoPlayerController.file(file5)
      ..initialize().then((value) {
        print('initiazed');
        setState(() {
          init5 = true;

          _videoController5.play();
          print('playing');
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          if (init1)
            Column(
              children: [
                Container(height: 500, child: VideoPlayer(_videoController1)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_videoController1.value.isPlaying) {
                          _videoController1.pause();
                        } else {
                          _videoController1.play();
                        }
                      });
                    },
                    icon: Icon(_videoController1.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow))
              ],
            )
          else
            Center(child: CircularProgressIndicator()),
          if (init2)
            Column(
              children: [
                Container(height: 500, child: VideoPlayer(_videoController2)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_videoController2.value.isPlaying) {
                          _videoController2.pause();
                        } else {
                          _videoController2.play();
                        }
                      });
                    },
                    icon: Icon(_videoController2.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow))
              ],
            )
          else
            Center(child: CircularProgressIndicator()),
          if (init3)
            Column(
              children: [
                Container(height: 500, child: VideoPlayer(_videoController3)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_videoController3.value.isPlaying) {
                          _videoController3.pause();
                        } else {
                          _videoController3.play();
                        }
                      });
                    },
                    icon: Icon(_videoController3.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow))
              ],
            )
          else
            Center(child: CircularProgressIndicator()),
          if (init4)
            Column(
              children: [
                Container(height: 500, child: VideoPlayer(_videoController4)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_videoController4.value.isPlaying) {
                          _videoController4.pause();
                        } else {
                          _videoController4.play();
                        }
                      });
                    },
                    icon: Icon(_videoController4.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow))
              ],
            )
          else
            Center(child: CircularProgressIndicator()),
          if (init5)
            Column(
              children: [
                Container(height: 500, child: VideoPlayer(_videoController5)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_videoController5.value.isPlaying) {
                          _videoController5.pause();
                        } else {
                          _videoController5.play();
                        }
                      });
                    },
                    icon: Icon(_videoController5.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow))
              ],
            )
          else
            Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
