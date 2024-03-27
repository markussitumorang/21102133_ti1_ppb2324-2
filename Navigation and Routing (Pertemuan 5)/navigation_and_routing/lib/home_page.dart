import 'package:flutter/material.dart';
import 'package:navigation_and_routing/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const SecondPage(data: 'Data dari Home Page')),
                );
              },
              child: const Text('Menuju halaman kedua'),
            ),

            //Tombol Kedua
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second_page',
                    arguments: 'Menggunakan Remote');
              },
              child: const Text('Menuju halaman kedua dengan route'),
            )
          ],
        ),
      ),
    );
  }
}
