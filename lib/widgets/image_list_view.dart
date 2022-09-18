import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class ImageListView extends StatefulWidget {
  const ImageListView({Key? key, this.duration = 30, required this.initialIndex}) : super(key: key);

  final int initialIndex;
  final int duration;

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final _currentScrollPosition = _scrollController.offset;
    final _scrollEndPosition = _scrollController.position.maxScrollExtent;

    scheduleMicrotask(() {
      _scrollController.animateTo(
        _currentScrollPosition == _scrollEndPosition ? 0 : _scrollEndPosition,
        duration: Duration(seconds: widget.duration),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((BuildContext context, int index) => _ImageItem(
                image: 'assets/nft/${widget.initialIndex + index + 1}.png',
              )),
        ),
      ),
    );
  }
}

class _ImageItem extends StatelessWidget {
  const _ImageItem({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: image,
      child: Image.asset(
        image,
        width: 130,
      ),
    );
  }
}
