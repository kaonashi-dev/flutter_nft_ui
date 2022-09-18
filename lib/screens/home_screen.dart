import 'package:flutter/material.dart';
import 'package:flutter_nft_ui/widgets/image_list_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff010101),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: const <Widget>[
                    SizedBox(
                      height: 90,
                      child: ImageListView(
                        initialIndex: 1,
                        duration: 19,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: ImageListView(
                        initialIndex: 40,
                        duration: 50,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: ImageListView(
                        initialIndex: 19,
                        duration: 30,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: ImageListView(
                        initialIndex: 29,
                        duration: 50,
                      ),
                    ),
                    SizedBox(
                      height: 90,
                      child: ImageListView(
                        initialIndex: 30,
                        duration: 19,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
            bottom: 60,
            left: 24,
            right: 24,
            child: SizedBox(
              height: 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Art with NFTs',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Check out this raffle for you guys only! new coin minted show some love.',
                    style: TextStyle(
                      color: Colors.white70,
                      height: 1.2,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 140,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff3000ff),
                    ),
                    child: const Text(
                      'Discover',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
