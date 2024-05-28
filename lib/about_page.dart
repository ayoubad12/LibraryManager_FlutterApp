import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor nisi vel justo accumsan, nec consequat tortor fermentum. Integer auctor scelerisque dolor sit amet congue. Suspendisse potenti. Sed pulvinar, ipsum a pharetra eleifend, risus libero accumsan metus, non imperdiet magna turpis id dui. Integer in nulla justo. Etiam sit amet libero ut leo malesuada placerat. Phasellus ultricies dictum risus, eget porta eros dictum sit amet. Sed nec odio at ante dapibus varius. Integer malesuada, mauris sed euismod congue, velit turpis vestibulum ex, sed dignissim ipsum orci id velit. Nam sagittis, odio vitae maximus lacinia, justo est pretium tortor, id auctor purus justo vitae leo.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
