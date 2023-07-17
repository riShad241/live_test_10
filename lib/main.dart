import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title:const Text("News Feed"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:orientation == Orientation.portrait ? Column(

          children: [
         ListTile(
           title: Center(
             child: Container(
               height: 150,
               width: 150,
               decoration: BoxDecoration(
                 color: Colors.grey,
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.5),
                     spreadRadius: 2,
                     blurRadius: 5,
                     offset: Offset(0, 3), // changes the shadow position
                   ),
                 ],
               ),
               child: Center(child: Text("150 x 150")),
             ),
           ),
         ),
            Divider(
            ),
            ListTile(
              title: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                  child: Center(child: Text("150 x 150")),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                  child: Center(child: Text("150 x 150")),
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Center(
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.grey,
                  child: Center(child: Text("150 x 150")),
                ),
              ),
            ),
            Divider(),

          ],
        ):
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 150,
                     width: 150,
                     color: Colors.grey,
                   ),
                 ),
                 Divider(),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     height: 150,
                     width: 150,
                     color: Colors.grey,
                   ),
                 ),
               ],
             ),

           ],
         )
      ),

    );
  }
}
void _widger(){

}

