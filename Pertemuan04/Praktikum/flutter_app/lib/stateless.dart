import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);
    @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[
            _buildRowWithText('MainAxisAlignment.spaceEvenly', MainAxisAlignment.spaceEvenly),
            const SizedBox(height: 20),
            _buildRowWithText('MainAxisAlignment.spaceAround', MainAxisAlignment.spaceAround),
            const SizedBox(height: 20),
            _buildRowWithText('MainAxisAlignment.spaceBetween', MainAxisAlignment.spaceBetween),
            const SizedBox(height: 20),
            _buildRowWithText('MainAxisAlignment.start', MainAxisAlignment.start),
            const SizedBox(height: 20),
            _buildRowWithText('MainAxisAlignment.center', MainAxisAlignment.center),
            const SizedBox(height: 20),
            _buildRowWithText('MainAxisAlignment.end', MainAxisAlignment.end),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithText(String text, MainAxisAlignment alignment) {
    return Column(
      children: [
        Text(text, style: const TextStyle(fontSize: 16)), 
        Row(
          mainAxisAlignment: alignment,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
      ],
    );
  }
}