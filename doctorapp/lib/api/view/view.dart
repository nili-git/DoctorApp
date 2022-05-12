import 'package:doctorapp/api/controller/controller.dart';
import 'package:doctorapp/api/model/model.dart';
import 'package:flutter/material.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({ Key? key }) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  var value;
   final DioClient _client = DioClient();
   late Future<List<Data>> futureAlbum;


   @override
   void initState() {
       futureAlbum = _client.userserverrequest();
       super.initState();
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
    appBar: AppBar(
     title: const  Text(" Api fetch"),),
      backgroundColor:Colors.white,


         body: SingleChildScrollView(
      child: Column(
        children: 
            [
          

  Container(
  height: 230,
  width: 300,
  child: ListView.builder(itemCount: _client.hosdata.length, itemBuilder: (context, index) => Text(_client.hosdata[index].name!),),),
           DropdownButton(
                hint: const Text("Select Districts"),
                value: value,
                items: _client.hosdata .map((cityOne){
                   return DropdownMenuItem(
                        child: Text(cityOne.name!),
                        value: cityOne.id,
                     );
                }).toList(),
                onChanged: (valued){ 
                  value = valued;
                  setState(() {
                    
                  });
                  print("Selected city is $value");
                }
            ),
          
          
        ],
       ),
   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: FutureBuilder<UserModel>(
    //       future:futureAlbum,
    //       builder: (context, snapshot) {
    //         if (snapshot.hasData) {
    //           UserModel? userInfo = snapshot.data;
    //          return SizedBox(
    //            height: 750,
    //            width: 400,
    //            child: ListView.builder(
    //              itemCount: snapshot.data!.data!.length,
    //              itemBuilder: (context,index)=> Text(userInfo!.data![index].name.toString()),),
    //          );
                 
    //           }
    //           else{
    //         return const  CircularProgressIndicator();
    //         }
    //         }
            
    //  ),
    //   ),

    );
  }
}



