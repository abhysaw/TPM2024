import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      'assets/images/lake-view-1.jpg',
      'assets/images/the-view-at-city-view.jpg',
      'assets/images/View_cafe_2.jpeg',
      'assets/images/view_cafe.jpeg'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Tugas Pertemuan 2'),
            backgroundColor: Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text('Pramana Abhyasa Wicaksana'),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text('123180135'),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Pencarian',
                      contentPadding: EdgeInsets.all(2),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: urls.length,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.all(24),
                    alignment: Alignment.center,
                    child: Image.asset(
                      urls[index],
                      height: 500,
                      width: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Tombol 1'),
                          )),
                      Container(
                          margin: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Tombol 2'),
                          )),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
