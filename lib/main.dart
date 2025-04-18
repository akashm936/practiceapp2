import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      home: const MyHomePage(title: 'Widget Splitting'),
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
      // Colors.red,
      Colors.greenAccent,
      Colors.white,
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ScrollCircleAvatar(arrColors: arrColors),
          ExpandedListTile(),
          ExpandedGridView(arrColors: arrColors),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ExpandedGridView extends StatelessWidget {
  const ExpandedGridView({
    super.key,
    required this.arrColors,
  });

  final List<Color> arrColors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return Container(color: arrColors[index]);
          },
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
          ),
        ),
      ),
    );
  }
}

//  This is Second Widget ExpandedListTile
class ExpandedListTile extends StatelessWidget {
  const ExpandedListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              "${index + 1}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            title: Text("This is Demo"),
            subtitle: Text("This subtitle"),
            trailing: Icon(Icons.add, size: 25),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

// First Widget ScrollCircleAvatar

class ScrollCircleAvatar extends StatelessWidget {
  const ScrollCircleAvatar({super.key, required this.arrColors});

  final List<Color> arrColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: arrColors[index],
              maxRadius: 50,
              child: Text(
                "${index + 1}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}

//
// class NewWidget extends StatelessWidget {
//   const NewWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     callback() {
//       print("Button is Clicked!!!");
//     }
//     return ElevatedButton(onPressed: callback, child: Text("Click Me"));
//   }
// }

// GridView.builder are used

// Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GridView.builder(
//         itemBuilder: (context, index) {
//           return Container(
//             color: arrColors[index],
//             child: Center(
//               child: Text(
//                 '${index + 1}',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//             ),
//           );
//         },
//         itemCount: arrColors.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           crossAxisSpacing: 11,
//           mainAxisSpacing: 11,
//         ),
//       ),
//     ),

// GridView Extent

// Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.extent(
//           maxCrossAxisExtent: 200,
//           crossAxisSpacing: 11,
//             mainAxisSpacing: 11,
//             children: [
//               Container(color: arrColors[0],),
//               Container(color: arrColors[1],),
//               Container(color: arrColors[2],),
//               Container(color: arrColors[3],),
//               Container(color: arrColors[4],),
//               Container(color: arrColors[5],),
//               Container(color: arrColors[6],),
//               Container(color: arrColors[7],),
//
//             ],),
//       )

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
