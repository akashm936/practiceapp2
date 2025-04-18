import 'package:flutter/material.dart';
import 'package:flutter/src/painting/borders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
      ),
      home: const MyHomePage(title: 'DateTime Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var arrColors = [
      Colors.orange,
      Colors.blue,
      Colors.pink,
      Colors.deepPurple,
      Colors.purple,
      Colors.indigoAccent,
      Colors.lightGreenAccent,
      Colors.red
    ];


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.extent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 11,
            mainAxisSpacing: 11,
            children: [
              Container(color: arrColors[0],),
              Container(color: arrColors[1],),
              Container(color: arrColors[2],),
              Container(color: arrColors[3],),
              Container(color: arrColors[4],),
              Container(color: arrColors[5],),
              Container(color: arrColors[6],),
              Container(color: arrColors[7],),
              
            ],),
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


// GridView.Count is here

//Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.count(
//           crossAxisCount: 1,
//           crossAxisSpacing: 11,
//           mainAxisSpacing: 11,
//           children: [
//             Container(color: arrColors[0],),
//             Container(color: arrColors[1],),
//             Container(color: arrColors[2],),
//             Container(color: arrColors[3],),
//             Container(color: Colors.white,
//             child: GridView.count(crossAxisCount: 3,
//             crossAxisSpacing: 11,
//             mainAxisSpacing: 11,
//             children: [
//               Container(color: arrColors[0],),
//               Container(color: arrColors[1],),
//               Container(color: arrColors[2],),
//               Container(color: arrColors[3],),
//               Container(color: arrColors[0],),
//               Container(color: arrColors[1],),
//               Container(color: arrColors[2],),
//               Container(color: arrColors[3],),
//             ],),),
//             Container(color: arrColors[5],),
//             Container(color: arrColors[6],),
//             Container(color: arrColors[7],),
//           ],
//         ),
//       )




// DateTime Picker

//Center(
//         child: Container(
//           width: 300,
//           height: 400,
//           color: Colors.orange,
//           child: Column(
//             children: [
//               Text(
//                 'Select Both',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   DateTime? datePicked = await showDatePicker(
//                     context: context,
//                     initialDate: DateTime.now(),
//                     firstDate: DateTime(2010),
//                     lastDate: DateTime(2026),
//                   );
//
//                   if (datePicked != null) {
//                     print("Selected Date : ${DateFormat('yMMMMd').format(datePicked)}");
//                   }
//
//                 },
//                 child: Text(
//                   "Select Date",
//                   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               ElevatedButton(onPressed: () async {
//                 TimeOfDay? timePicked = await showTimePicker(
//                     context: context,
//                     initialTime: TimeOfDay.now(),
//                 initialEntryMode: TimePickerEntryMode.dial);
//
//
//                 if(timePicked != null){
//                   print("Selected Time : ${timePicked.hour}: ${timePicked.minute}");
//                 }
//               }, child: Text(
//                 'Select Time',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//               ),)
//             ],
//           ),
//         ),
//       ),