import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me Gusta App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const LikeButton(),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool _isLiked = false;
  int _likeCount = 0;

  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likeCount--;
      } else {
        _likeCount++;
      }
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Me Gusta App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: _isLiked
                  ? const Icon(Icons.thumb_up)
                  : const Icon(Icons.thumb_up_alt_outlined),
              color: _isLiked ? Colors.blue : Colors.grey,
              onPressed: _toggleLike,
            ),
            Text('$_likeCount Me gusta'),
          ],
        ),
      ),
    );
  }
}
