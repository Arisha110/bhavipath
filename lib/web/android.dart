// importing dependencies
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// function to trigger the build process
void main() => runApp(const Android());

_launchURLBrowser() async {
  var url = Uri.parse("https://roadmap.sh/android");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://roadmap.sh/android");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class Android extends StatelessWidget {
  const Android({Key? key}) : super(key: key);

  // launchURL(Uri url) async {
  //   if (await canLaunchUrl(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Geeks for Geeks'),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                const Text(
                  'Welcome to GFG!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLBrowser,
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  // textColor: Colors.black,
                  // padding: const EdgeInsets.all(5.0),
                  child: const Text('Open in Browser'),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLApp,
                  style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(5)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(color: Colors.black))),
                  // textColor: Colors.black,
                  // padding: const EdgeInsets.all(5.0),
                  child: const Text('Open in App'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
