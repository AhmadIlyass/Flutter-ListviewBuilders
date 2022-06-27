import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Hide the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Seccond tutorial',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Tutorial'),
        centerTitle: true,
      ),
      // Implement the ExpansionTile
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const ExpansionTile(
                  trailing: CircleAvatar(),
                  title: Text(
                    'User Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Your Message Will Go Here'),
                  // Contents
                  children: [
                    ListTile(
                      trailing: Icon(Icons.account_box),
                      //trailing: Icon(Icons.arrow_forward_ios),
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: Text('Please Tap'),
                    ),
                    ListTile(
                        trailing: Icon(Icons.alarm),
                        leading: CircleAvatar(
                          backgroundColor: Colors.red,
                        ),
                        title: Text('Text with alarm icon')),
                    ListTile(
                        trailing: Icon(Icons.accessibility),
                        leading: CircleAvatar(
                          backgroundColor: Colors.amber,
                        ),
                        title: Text('Accessibility icon')),
                    ListTile(
                        trailing: Icon(Icons.arrow_back),
                        leading: CircleAvatar(
                          backgroundColor: Colors.pink,
                        ),
                        title: Text('Arrow back icon')),
                    ListTile(
                        trailing: Icon(Icons.access_time),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                        title: Text('Time Icon')),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
