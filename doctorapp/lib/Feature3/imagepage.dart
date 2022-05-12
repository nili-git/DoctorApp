// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// class ImageController {
//   XFile? image;
//   XFile? camera;
//   File? prescriptionCamera;
//   File? file;
// }

// class ImageProfile extends StatefulWidget {
//   const ImageProfile({Key? key}) : super(key: key);
//   @override
//   State<ImageProfile> createState() => _ImageProfileState();
// }

// class _ImageProfileState extends State<ImageProfile> {

//   PickedFile? imageFile;

//   // XFile? image;
//   final ImagePicker _picker = ImagePicker();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         children: <Widget>[
//           CircleAvatar(
//             radius: 70.0,
//             child: InkWell(
//               onTap: () {
//                 showModalBottomSheet(
//                   context: context,
//                   builder: ((builder) => bottomText()),
//                 );
//               },
//             ),
//             backgroundImage: imageFile == null
//                 ? const AssetImage("") as ImageProvider
//                 : FileImage(
//                     File(imageFile!.path),
//                   ),
//             backgroundColor: const Color.fromRGBO(236, 247, 251, 1),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget bottomText() {
//     return Container(
//       height: 100,
//       width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 20,
//       ),
//       child: Column(
//         children: <Widget>[
//           const Text(
//             "Choose Profile Picture",
//             style: TextStyle(fontSize: 20),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton.icon(
//                 onPressed: () {
//                   _openCamera(context);
//                 },
//                 icon: const Icon(Icons.camera),
//                 label: const Text("Camera"),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               ElevatedButton.icon(
//                 onPressed: () {
//                   _openGallery(context);
//                 },
//                 icon: const Icon(Icons.image),
//                 label: const Text("Gallery"),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   void takePicture(ImageSource source) async {
//     final pickedFile = await _picker.pickImage(
//       source: source,
//     );
//     setState(() {});
//   }

//   void _openGallery(BuildContext context) async {
//     // ignore: deprecated_member_use
//     final pickedFile = await ImagePicker().getImage(
//       source: ImageSource.gallery,
//     );
//     setState(() {
//       imageFile = pickedFile!;
//     });

//     Navigator.pop(context);
//   }

//   void _openCamera(BuildContext context) async {
//     // ignore: deprecated_member_use
//     final pickedFile = await ImagePicker().getImage(
//       source: ImageSource.camera,
//     );
//     setState(() {
//       imageFile = pickedFile!;
//     });
//     Navigator.pop(context);
//   }
// }
