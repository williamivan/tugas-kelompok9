import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // List of names and NIMs
    final List<String> namesAndNIMs = [
      'Tamara : 32210008',
      'Yovan Adiputri : 32210088',
      'William Ivan Saputra : 32210112'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Home'),
      ),
      body: ListView.builder(
        itemCount: namesAndNIMs.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(namesAndNIMs[index]),
            onTap: () {
              // Navigate to the appropriate screen based on index
              if (index == 0) {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Tamara()));
              } else if (index == 1) {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => Yovan()));
              } else if (index == 2) {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => William()));
              }
            },
          );
        },
      ),
    );
  }
}

class Tamara extends StatelessWidget{
  const Tamara({super.key});

  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(itemBuilder: (BuildContext context, int index) {
        return Text('\n\tNIM : 32210008\n\n\tTanggal Lahir : 3 April 2003');
      }),
    );
  }
}
class Yovan extends StatelessWidget{
  const Yovan({super.key});

  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(itemBuilder: (BuildContext context, int index) {
        return Text('\n\tNIM : 32210088\n\n\tTanggal Lahir : 22 Juni 2033');
      }),
    );
  }
}
class William extends StatelessWidget{
  const William({super.key});

  Widget build(BuildContext context){
     return Scaffold(
      appBar: AppBar(),
      body: PageView.builder(itemBuilder: (BuildContext context, int index) {
        return Text('\n\tNIM : 32210112\n\n\tTanggal Lahir : 4 Oktober 2001');
      }),
    );
  }
}


