import 'package:flutter/material.dart';
import 'package:self_diagnose/components/listModel/hospitalModel.dart';

class  HospitalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Hospital')),
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
  final europeanCountries = ['Lagos Island Maternity Hospital', 'Isalu Hospitals', 'TSt. Nicholas Hospital, Lagos', 'Lagos University Teaching Hospital (Lasuth)',
    'Federal Medical Centre Ebute Metta', 'First Consultant Hospital', 'Creek Hospital', 'Lagos State University Teaching Hospital', 'National Orthopaedic Hospital'
        'Lagoon Hospitals', 'Mercy Stripes Specialist Hospital', 'Eko Hospital', 'Reddington Hospital', 'Lagos Island General Hospital'
        'Yaba Psychiatric Hospital', 'Gbagada General Hospital', 'Holy Trinity Hospital', 'Adefemi Hospital', 'Blue Cross Hospital',
    'Ifako-Ijaiye General Hospital', 'Isolo General Hospital', 'Ikorodu General Hospital', 'Badagry General Hospital',
    'Maryiam Ville Medical Center', 'Adebayo Living Tower Hospital', 'Shepherd Medical Centre',];


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

// class HospitalList extends StatefulWidget {
//   @override
//   _HospitalListState createState() => _HospitalListState();
// }
//
// class _HospitalListState extends State<HospitalList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Hospital Near by',
//         ),
//       ),
//       body: _buildListView(),
//     );
//   }
//   ListView _buildListView() {
//     return ListView.builder(
//       itemCount: menuItem.length,
//       itemBuilder: (context, index) {
//         return menus(menuItem[index]);
//       },
//     );
//   }
//
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
