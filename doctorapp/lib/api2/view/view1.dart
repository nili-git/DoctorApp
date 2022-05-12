// import 'package:doctorapp/api/controller/controller.dart';
import 'package:doctorapp/api2/controller/controller1.dart';
import 'package:doctorapp/api2/model/model1.dart';
import 'package:flutter/material.dart';


class ViewPage1 extends StatefulWidget {
  const ViewPage1({ Key? key }) : super(key: key);

  @override
  State<ViewPage1> createState() => _ViewPage1State();
}

class _ViewPage1State extends State<ViewPage1> {
  

   final DioClients _client = DioClients();
   late Future<List<Data>> futureAlbum;
   var value;


   @override
   void initState() {
     futureAlbum = _client.userserverrequest();
    //  value = _client.hosdata[0].name;
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    //var data;
    return   Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            _client.userserverrequest();
            print(_client.hosdata.length);
          }, icon: const  Icon(Icons.abc),),
        ],
        title:  const Text("API fetch Specialities "),
      ),



    body: SingleChildScrollView(
      child: Column(
        children: 
            [
          

  Container(
  height: 230,
  width: 300,
  child: ListView.builder(itemCount: _client.hosdata.length, itemBuilder: (context, index) => Text(_client.hosdata[index].name!),),),
           DropdownButton(
                hint: const Text("Select City"),
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
   
    


     );
   }
 }