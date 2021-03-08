import 'package:flutter/material.dart';
import 'package:self_diagnose/components/listModel/PharmacyModel.dart';


class  PharmacyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Pharmacy')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
Widget _myListView(BuildContext context) {

  // backing data
  final europeanCountries = ['MedPlus Pharmacy', 'HealthPlus Pharmacy', 'Tommy - Dee Ventures', 'Juli Pharmacy and Stores',
    'Wellrose Pharmacy', 'Chilpharm Pharmacy', 'Crad Pharmacy and Supermarket', 'Goche Pharmacy', 'Bolar Pharmacy And Stores',];


  return ListView.builder(
    itemCount: europeanCountries.length,
    // itemCount: menuItem.length,
    itemBuilder: (context, index) {
      return Card(
        child: ListTile(
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Row(
        //     children: <Widget>[
              title: Text(europeanCountries[index]),
        //     ],
           ),
        // ),
      );
    },
    //     title: Text(europeanCountries[index]),
    //   );
    // },
  );

}

//   Widget menus(UiMenuModel menuItem) {
//     return Card(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Expanded(
//                     flex: 0,
//                     child: Container(
//                       // color: menuItem.itemColor,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text("${menuItem.subtitle}",
//                               style: TextStyle(
//                                   color: Colors.blue,
//                                   fontSize: 17,
//                                   fontWeight: FontWeight.w500)),
//                           Text("${menuItem.title}",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 15,
//                                   fontWeight: FontWeight.w500))
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ]
//           ),
//         ));
//
//   }
// }
