import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map movie;

  DetailsScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
        title: Text(movie['name'], style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(
                movie['image'] != null ? movie['image']['original'] : '',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                movie['name'],
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                movie['summary'] != null
                    ? movie['summary'].replaceAll(RegExp(r'<[^>]*>'), '')
                    : 'No summary available',
                style: const TextStyle(fontSize: 16, color: Colors.white60),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
