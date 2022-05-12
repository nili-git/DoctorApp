//import 'package:doctorapp/Feature3/imagepage.dart';
import 'package:doctorapp/api2/controller/controller1.dart';
import 'package:doctorapp/api2/model/model1.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as formDataMap;

class AmbulancePage extends StatefulWidget {
  const AmbulancePage({Key? key}) : super(key: key);

  @override
  State<AmbulancePage> createState() => _AmbulancePageState();
}

class _AmbulancePageState extends State<AmbulancePage> {
  PickedFile? imageFile;
  final ImagePicker _picker = ImagePicker();

  // ImageController imageController = ImageController();
  TextEditingController ambulance = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController contact = TextEditingController();
  TextEditingController searchdistrict = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController website = TextEditingController();
  TextEditingController scapacity = TextEditingController();
  TextEditingController sshift = TextEditingController();
  TextEditingController address = TextEditingController();

  var value;
  var idDistrict;
  final DioClients _client = DioClients();

  late Future<List<Data>> futureAlbum;

  @override
  void initState() {
    futureAlbum = _client.userserverrequest();
    super.initState();
  }

// void _openGallery(BuildContext context) async{
//     // ignore: deprecated_member_use
//     final pickedFile = await ImagePicker().getImage(
//       source: ImageSource.gallery ,
//     );
//     setState(() {
//       imageFile = pickedFile!;
//     });

//     Navigator.pop(context);
//   }

//   PickedFile? imageFile= null;
  void _openGallery(BuildContext context) async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 98, 127, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                    left: 15,
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          Text(
                            "Ambulance Form",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 70.0,
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          builder: ((builder) => bottomText()),
                        );
                      },
                    ),
                    backgroundImage: imageFile == null
                        ? const AssetImage("") as ImageProvider
                        : FileImage(
                            File(imageFile!.path),
                          ),
                    backgroundColor: const Color.fromRGBO(236, 247, 251, 1),
                  ),
                ],
              ),
              //const ImageProfile(),
              const SizedBox(
                height: 30,
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(236, 247, 251, 1),
                  border: Border.all(
                    width: 0,
                    color: const Color.fromRGBO(36, 98, 127, 1),
                  ),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        " Please fill your info to place your service.",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: ambulance,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Ambulance Name',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: description,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Description (optional)',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: contact,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Contact Number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: DropdownButton(
                              hint: const Text("Select Districts"),
                              value: value,
                              items: _client.hosdata.map((cityOne) {
                                return DropdownMenuItem(
                                  child: Text(cityOne.name!),
                                  // child: Text(cityOne.name!),
                                  value: cityOne.id,
                                  onTap: () {
                                    idDistrict = cityOne.id;
                                    print(idDistrict);
                                    setState(() {});
                                  },
                                );
                              }).toList(),
                              onChanged: (valued) {
                                value = valued;
                                setState(() {});
                                print("Selected city is $value");
                              }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: city,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'City',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: email,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: website,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Website(Optional)',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            " Services",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.bus_alert_rounded),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: scapacity,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'capacity',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: sshift,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'shift',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            " Maps",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.location_on),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          border: Border.all(width: 0, color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 20, 0),
                          child: TextFormField(
                            controller: address,
                            obscureText: false,
                            decoration: const InputDecoration(
                              hintText: 'Address',
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.close,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 250,
                        child: MaterialButton(
                          onPressed: () async {
                            var filePath = imageFile?.path;
                            // _picker.file?.path;

                            var data = {
                              "name": ambulance.text,
                              "description": description.text,
                              "primary_contact_number": contact.text,
                              "district_id": idDistrict,
                              "city": city.text,
                              "primary_email": email.text,
                              "website_link": website.text,
                              "capacity": scapacity.text,
                              "shift": sshift.text,
                              "address_line_1": address.text,
                              //"profile_picture": null,
                              "latitude": " ",
                              "longitude": " ",
                              "profile_picture": filePath != null
                                  ? await formDataMap.MultipartFile.fromFile(
                                      filePath)
                                  : null,
                            };
                            // print(filePath);
                            print(data);
                            _client.submitData(data);

                            setState(() {});
                          },
                          color: const Color.fromRGBO(0, 191, 175, 1),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomText() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          const Text(
            "Choose Profile Picture",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  _openCamera(context);
                },
                icon: const Icon(Icons.camera),
                label: const Text("Camera"),
              ),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  _openGallery(context);
                },
                icon: const Icon(Icons.image),
                label: const Text("Gallery"),
              )
            ],
          )
        ],
      ),
    );
  }

  void takePicture(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
    setState(() {});
  }
}
