import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practiceapp2/AnimationSeries/animatedContainerWidget.dart';
import 'package:practiceapp2/AnimationSeries/animatedcrossfade.dart';
import 'package:practiceapp2/AnimationSeries/animatedopacitywidget.dart';
import 'package:practiceapp2/second_screen.dart';
// import 'package:flutter/src/painting/borders.dart';
// import 'package:practiceapp2/Widgets/roundedbutton.dart';

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
      home: AnimatedCrossFadeWidget(),
    );
  }
}
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   RangeValues values = RangeValues(0, 10);
//   double _value = 10;
//   bool isSwitch = false;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // var arrColors = [
//     //   Colors.orange,
//     //   Colors.blue,
//     //   Colors.pink,
//     //   Colors.deepPurple,
//     //   Colors.purple,
//     //   Colors.indigoAccent,
//     //   Colors.lightGreenAccent,
//     //   Colors.red,
//     //   Colors.greenAccent,
//     //   Colors.white,
//     // ];
//
//
//     // Icon Widget
//     // Font Awsome Flutter
//     // Position Widget
//
//     RangeLabels labels = RangeLabels(
//       values.start.toString(),
//       values.end.toString(),
//     );
//
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Container(
//         width: double.infinity,
//         height: 400,
//         color: Colors.lightBlue,
//         child: Stack(
//           children: [
//             Positioned(
//               bottom: 40,
//               right: 40,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.orange,
//               ),
//             ),
//             Positioned(
//               bottom: 40,
//               left: 40,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.purpleAccent,
//               ),
//             )
//           ],
//         ),
//       )
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// Icons And FontAwsome Widget

// Center(child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.paypal, size: 100,), // Default Flutter Library Icons
//           FaIcon(FontAwesomeIcons.googleDrive, size: 100, color: Colors.orange, )
//         ],
//       ))



//  RangeSlider , Switch, and Slider, ElevatedButton

// Column(
//         children: [
//           RangeSlider(
//             min: 0,
//             max: 10,
//             labels: labels,
//             divisions: 10,
//
//             values: values,
//             onChanged: (newValue) {
//               values = newValue;
//               setState(() {
//                 print('${newValue.start}, ${newValue.end}');
//               });
//             },
//           ),
//           Slider(
//             min: 0,
//             max: 10,
//             value: _value,
//             label: _value.round().toString(),
//             divisions: 10,
//             onChanged: (value1) {
//               setState(() {
//                 _value = value1;
//                 print("$_value");
//               });
//             },
//           ),
//           Switch(
//             padding: EdgeInsets.all(10),
//             value: isSwitch,
//             onChanged: (value) {
//               setState(() {
//                 isSwitch = value;
//                 print('$isSwitch');
//               });
//             },
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => SecondScreen()),
//               );
//             },
//             child: Text("Go to Second Screen"),
//           ),
//         ],
//       ),

// Rich Text Widget

//Center(
//         child: RichText(text: TextSpan(
//           style: TextStyle(
//             fontSize: 20, color: Colors.black
//           ),
//           children: [
//             TextSpan(
//               text: 'Hello ',
//             ),
//             TextSpan(
//               text: "Akash",style: TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: Colors.orange
//             )
//             ),
//             TextSpan(
//               text: "\n How are you"
//             )
//
//
//           ]
//         )),
//       )

// SizedBox WIdgets and ConstraintBox and There Properties
// expand, Srinke, Fix

// Column(
//         children: [
//           ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: 200,
//               maxWidth: double.infinity,
//               minHeight: 50,
//               minWidth: 50,
//             ),
//             child: SizedBox.expand(
//               child: Container(
//                 color: Colors.lightGreenAccent,
//                 child: Center(
//                   child: Text(
//                     "SizedBox.expand",
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(width: 11, height: 11),
//           Container(width: 150, height: 150, color: Colors.orange),
//           SizedBox(height: 11),
//           SizedBox(
//             width: 150,
//             height: 45,
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.lightGreenAccent,
//               ),
//               onPressed: () {},
//               child: Text(
//                 "Click",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),

// Wrap Widget in the Flutter

// Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Wrap(
//           direction: Axis.vertical,
//           spacing: 11,
//           runSpacing: 11,
//           alignment: WrapAlignment.spaceEvenly,
//           children: [
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[0],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[1],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[2],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[3],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[4],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[5],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[6],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[7],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[8],
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               color: arrColors[9],
//             )
//           ],
//         ),
//       ),

// Custom Widget Code

// Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               width: 120,
//               height: 50,
//               child: RoundedButton(
//                 btnText: "Play",
//                 icon: Icon(Icons.play_arrow),
//                 callback: () {
//                   print("Play!!!");
//                 },
//                 textStyle: TextStyle(fontSize: 16),
//               ),
//             ),
//             Container(
//               height: 11,
//             ),
//             Container(
//               width: 120,
//               height: 50,
//               child: RoundedButton(
//                 btnText: "Login",
//                 icon: Icon(Icons.lock,color: Colors.black,),
//                 callback: () {
//                   print("Login In");
//                 },
//                 textStyle: TextStyle(fontSize: 16,color: Colors.black),
//                 bgcolor: Colors.orange,
//               ),
//             )
//
//
//           ],
//         ),
//       ),

// Widget Splitting

// Column(
//         children: [
//           ScrollCircleAvatar(arrColors: arrColors),
//           ExpandedListTile(),
//           ExpandedGridView(arrColors: arrColors),
//         ],
//       ),

//  Flutter Stack Widget

// Stack(
//         children: [
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.lightGreen,
//           ),
//           Container(
//             width: 160,
//             height: 160,
//
//             color: Colors.red,
//           ),
//           Container(
//             width: 120,
//             height: 120,
//             color: Colors.indigo,
//             margin: EdgeInsets.all(30),
//           )
//         ],
//       ),

class ExpandedGridView extends StatelessWidget {
  const ExpandedGridView({super.key, required this.arrColors});

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
