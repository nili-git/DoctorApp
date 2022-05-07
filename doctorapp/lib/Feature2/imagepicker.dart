import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraWidget extends StatefulWidget{
  @override
  State createState() {
   return CameraWidgetState();
  }

}

class CameraWidgetState extends State{
   // ignore: avoid_init_to_null
   PickedFile? imageFile=null;
   Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: const Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
        child: ListBody(
          children: [
           const  Divider(height: 1,color: Colors.blue,),
            ListTile(
              onTap: (){
                _openGallery(context);
              },
            title: const  Text("Gallery"),
              leading: const Icon(Icons.account_box,color: Colors.blue,),
        ),

           const  Divider(height: 1,color: Colors.blue,),
            ListTile(
              onTap: (){
                _openCamera(context);
              },
              title: const Text("Camera"),
              leading:  const Icon(Icons.camera,color: Colors.blue,),
            ),
          ],
        ),
      ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const  Text("Pick Image Camera"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 10, 0),
                  
                  child: Card(
                    shape: const RoundedRectangleBorder(
                       borderRadius:  BorderRadius.only(
                   bottomLeft: Radius.circular(20.0),
                       bottomRight: Radius.circular(20.0),
                   ),
                     // borderRadius: BorderRadius.circular(12),
                      ),
                    margin: const EdgeInsets.all(40),
                    child:( imageFile==null)?const Text("", ): Image.file( File(  imageFile!.path)),
                    
                  ),
                ),
                MaterialButton(
                  textColor: Colors.white,
                  color: Colors.pink,
                  onPressed: (){
                    _showChoiceDialog(context);
                  },
                  child: const Text("Select Image"),

                ),
              ],
            ),
          ),
        ),
      );
  }

  void _openGallery(BuildContext context) async{
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
      // ignore: deprecated_member_use
      final pickedFile = await ImagePicker().getImage(
            source: ImageSource.camera ,
            );
            setState(() {
            imageFile = pickedFile!;
      });
      Navigator.pop(context);
  }
}

