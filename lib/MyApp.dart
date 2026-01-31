// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:firebase_storage/firebase_storage.dart';
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_messaging/firebase_messaging.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }
//
// class Firebase {
//   static Future<void> initializeApp() async {}
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key}); // Added key for warning fix
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Decoration & Catering App',
//       theme: ThemeData(primarySwatch: Colors.teal),
//       home: const HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final FirebaseMessaging? _firebaseMessaging = FirebaseMessaging.instance;
//
//   @override
//   void initState() {
//     super.initState();
//     _firebaseMessaging?.requestPermission();
//     _firebaseMessaging?.getToken().then((token) {
//       debugPrint("Push Notification Token: $token"); // debugPrint instead of print
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Decoration & Catering'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const ServicesPage()),
//                 );
//               },
//               child: const Text('Our Services'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const GalleryPage()),
//                 );
//               },
//               child: const Text('Gallery'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const BookingPage()),
//                 );
//               },
//               child: const Text('Book Now'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class FirebaseMessaging {
//   static FirebaseMessaging? get instance => null;
//
//   getToken() {}
//
//   void requestPermission() {}
// }
//
// class ServicesPage extends StatelessWidget {
//   const ServicesPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final CollectionReference services =
//     FirebaseFirestore.instance.collection('services');
//
//     return Scaffold(
//       appBar: AppBar(title: const Text('Services')),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: services.snapshots(),
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           return ListView(
//             children: snapshot.data!.docs.map((doc) {
//               final data = doc.data() as Map<String, dynamic>;
//               return ListTile(
//                 title: Text(data['name'] ?? ''),
//                 subtitle: Text(data['description'] ?? ''),
//               );
//             }).toList(),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class QuerySnapshot {
//   get docs => null;
// }
//
// class FirebaseFirestore {
//   static var instance;
// }
//
// class CollectionReference {
//   snapshots() {}
// }
//
// class GalleryPage extends StatelessWidget {
//   const GalleryPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Gallery')),
//       body: const Center(child: Text('Images and videos from Firebase Storage here.')),
//     );
//   }
// }
//
// class BookingPage extends StatefulWidget {
//   const BookingPage({super.key});
//
//   @override
//   State<BookingPage> createState() => _BookingPageState();
// }
//
// class _BookingPageState extends State<BookingPage> {
//   final _formKey = GlobalKey<FormState>();
//   String name = '', date = '', eventType = '', location = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Book Your Event')),
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Name'),
//                 onChanged: (value) => name = value,
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Event Date'),
//                 onChanged: (value) => date = value,
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Event Type'),
//                 onChanged: (value) => eventType = value,
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Location'),
//                 onChanged: (value) => location = value,
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   await FirebaseFirestore.instance.collection('bookings').add({
//                     'name': name,
//                     'date': date,
//                     'eventType': eventType,
//                     'location': location,
//                   });
//                   if (mounted) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       const SnackBar(content: Text('Booking submitted!')),
//                     );
//                   }
//                 },
//                 child: const Text('Submit Booking'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
