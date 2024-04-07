// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart' as flutter_image;
import 'package:video_player/video_player.dart';

// ignore: camel_case_types
class Practicle_7 extends StatefulWidget {
  
  @override
  
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Practicle_7> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use
    _controller = VideoPlayerController.network(
            'https://player.vimeo.com/progressive_redirect/playback/210753513/rendition/360p/file.mp4?loc=external&oauth2_token_id=1747418641&signature=0d4101016c056c53404476b00b464c6106782d8f0a1366411adb842e8569d559')
        ..initialize().then((_) {
          setState(() {});
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Media Page'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _buildImageFromInternet(),
              const SizedBox(height: 10),
              const Text(
                'This is an image',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _controller != null && _controller!.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller!.value.aspectRatio,
                      child: VideoPlayer(_controller!),
                    )
                  : const CircularProgressIndicator(),
              const SizedBox(height: 10),
              const Text(
                'This is a video',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (_controller!.value.isPlaying) {
                      _controller!.pause();
                    } else {
                      _controller!.play();
                    }
                  });
                },
                child: Icon(
                  _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  Widget _buildImageFromInternet() {
    return const Image(
      image: flutter_image.NetworkImageWithRetry(
        'https://images.pexels.com/photos/264512/pexels-photo-264512.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      ),
    );
  }
}
