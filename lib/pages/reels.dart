import 'package:flutter/material.dart';

class UserReels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Reels'),
      ),
      body: ListView.builder(
        itemCount: 3, // Use a small number of items for demonstration
        itemBuilder: (context, index) {
          return ReelItem();
        },
      ),
    );
  }
}

class ReelItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Placeholder(), // Placeholder for video content
          Align(
            alignment: Alignment.bottomCenter,
            child: ReelOverlay(),
          ),
        ],
      ),
    );
  }
}

class ReelOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[300],
                radius: 18,
              ),
              SizedBox(width: 12),
              Text(
                'Username',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Description for the video...',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
