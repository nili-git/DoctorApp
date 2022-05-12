import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DoctorApp extends StatefulWidget {
  const DoctorApp({ Key? key }) : super(key: key);

  @override
  State<DoctorApp> createState() => _DoctorAppState();
}

class _DoctorAppState extends State<DoctorApp> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: const Color.fromRGBO(36, 98, 127, 1),
   
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(
              height: 30,
              child: Padding(
              padding: const  EdgeInsets.only(right: 15,left: 15),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children:const [
                   Icon(Icons.arrow_back_ios, color: Colors.white,),
                  Text("Doctors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,fontWeight: FontWeight.bold),),
                ],),
                 GestureDetector(
                   onTap: () {
                     showDialogWidget(context);
                   },
                   child: const Icon(Icons.
                   filter_list_rounded,color: Colors.white,),
                 ),
              ],
              ),
            ),
            ),
            const SizedBox(height: 20,),
        
          Container(
          width: MediaQuery.of(context).size.width,
           decoration:  BoxDecoration(
           color: Colors.white,
            border:  Border.all( width: 1, color:  const Color.fromRGBO(36, 98, 127, 1),
                  ),
           borderRadius: const BorderRadius.only(
             topRight: Radius.circular(30.0),
             topLeft: Radius.circular(30.0),
           ),
         ),
         child: Padding(
           padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children:  [
                Container( 
                  width: MediaQuery.of(context).size.width,
                   decoration:  BoxDecoration(
                  border:  Border.all( width: 1, color:  const Color.fromRGBO(36, 98, 127, 1),
                  ),
                   borderRadius: const  BorderRadius.only(
                   bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                 ),
                 ),
           
                 child: Column(
                   children:  [
                    const  SizedBox(height: 20,),
                   const CircleAvatar(
                      radius: 50,
                     backgroundImage: AssetImage("assets/image3.jpg"),
                    ),
                     const SizedBox( height: 10,),
                    const Text(" Dr. Ravindra Raj Bandari", style: TextStyle(
                  color:  Color.fromRGBO(36, 98, 127, 1),
                 fontWeight: FontWeight.bold,
                 fontSize: 18,),),
              const Text(" Position",
               style:  TextStyle(
               color: Colors.grey,
               fontSize: 15,),
               ),
               const SizedBox( height: 10,),
               Padding(
                 padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                 child: Row(
           
                   children:   [
                    Expanded(
                      child:  DoctorPositionCard(image: "assets/image4.svg", title: 'Position',)),
           
                     Expanded(child:  DoctorPositionCard(image: "assets/image5.svg", title: 'Experience',)),
                     Expanded(child:  DoctorPositionCard(image: "assets/image6.svg", title: 'Ratings',)),
                       
                    
                   ],
                   
           
                 ),
               ),
            
               ],
                 ),
                ),
           
                 const SizedBox(height: 20,),
                  Row(
           children: [
             PriceCard(image: "assets/image7.svg", title: 'Price', des: '250 Rs Only',),
             const Spacer(),
             PriceCard(image: "assets/image8.svg", title: 'NMC No', des: '326457384',),
           ],
                  ),
                   const SizedBox( height: 20,),
                  const Text(" ABOUT DOCTOR", 
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  ),
                  ),
                  const SizedBox( height: 10,),
                  const Text('''Doctors have a very nobie profession.In addition, there are equipped with comprehensive knowledge and devices that enable them to diagnose and treat their patients with correct procedures.''',
                   style: TextStyle(color: Colors.grey),),
                  const SizedBox(height: 20,),
                  const Text("WORKING TIME ", style: TextStyle(color: Colors.black),),
                  const SizedBox(height: 10,),
                  const Text(" Mon-Sat(08:30 AM- 09: 00 PM)", style: TextStyle(color: Colors.grey),),
                  const SizedBox(height: 10,),
                  const Text(" EXTRA TIME", style: TextStyle( color: Colors.black),),
                  const SizedBox(height: 5,),
                   Column(
            children:  [ 
              TimeCard(icon: Icons.delete, title: "Mon - Sat(08 - 30 \nAM - 09:00 PM", ),
              TimeCard(icon: Icons.delete, title: "Mon - Sat(08 - 30 \nAM - 09:00 PM", ),
              TimeCard(icon: Icons.delete, title: "Mon - Sat(08 - 30 \nAM - 09:00 PM", ),
              
              ],
              ),
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
               width: 250,
               child: MaterialButton(
                 onPressed: () {
                 },

                 color: const Color.fromRGBO(36, 98, 127, 1),
                 child:  const  Text("BOOK VIDEO CONSULT", style:  TextStyle(
                   color: Colors.white, 
                   fontWeight: FontWeight.bold),),
                   shape:  RoundedRectangleBorder
                   (
                     borderRadius:  BorderRadius.circular(20.0),),
                 ),
              ),
            ),
           
                   const SizedBox(height: 20,),
                     Center(
                       child: SizedBox(
                        width: 250,
                        child: MaterialButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage2(image: "assets/image2.svg", title: " Payment \n Sucessful!", des: " Thank you for Booking \n Appointment.", buttontitle: " UPCOMING APPOINTMENT",  )),);
                          },
                          color: const Color.fromRGBO(0, 191, 175, 1),
                          child:  const  Text("BOOK APPOINTMENT", style:  TextStyle(
                            color: Colors.white, 
                            fontWeight: FontWeight.bold),),
                            shape:  RoundedRectangleBorder
                            (
                              borderRadius:  BorderRadius.circular(20.0),),
                          ),
                    ),
                     ),
           
             ],
           
           
           
           ),
      
         ),

        
        ),



            ],
          ),
        ),
      ),


    );
  }
}

class TimeCard extends StatelessWidget {
  IconData icon;
  String title;
   TimeCard({
    Key? key, required this.icon, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
            children: 
                      [Container(
                       
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                       decoration:  BoxDecoration(
            color: const Color.fromRGBO(36, 98, 127, 1),
                       border: Border.all( 
            width: 0,
            color: const Color.fromRGBO(0, 191, 175, 1),
                       ),
                       borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
                       ),
                       ),
                       child:  Icon(icon, 
                       color: const Color.fromRGBO(255, 255, 255, 0.6),
                        size:20,),
                          ),
                     const SizedBox(width: 10,),
                 Column(
                   children:  [
                  Text(title, style: const TextStyle(color: Colors.grey),)
                   ],
                 ),
                ],

          ),
    );
  }
}

class PriceCard extends StatelessWidget {
  String image;
  String title;
  String des;
   PriceCard({
    Key? key, required this.image, required this.title, required this.des,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        SvgPicture.asset(image),
        const SizedBox(width: 5),
        Container(
          height: 28,
          width: 3,
          color: const Color.fromRGBO(0, 191, 175, 1),
        ),
        const SizedBox(width: 5),
        Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Text(title, style: const TextStyle(color: Colors.black),),
         Text(des, style: const TextStyle(color: Colors.grey),),

          ],
        ),
      ],
      
    );
  }
}

class DoctorPositionCard extends StatelessWidget {
  String image;
  String title;
   DoctorPositionCard({
    Key? key, required this.image, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: MediaQuery.of(context).size.height* 0.15,                
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          color: Colors.white,
           border: Border.all( 
             width: 0,
             color: const Color.fromRGBO(0, 191, 175, 1),
           ),
         borderRadius: const BorderRadius.only(
         bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
           ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Column(
            
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
             decoration:  BoxDecoration(
               color: const Color.fromRGBO(36, 98, 127, 1),
             border: Border.all( 
               width: 0,
               color: const Color.fromRGBO(0, 191, 175, 1),
             ),
             borderRadius: const BorderRadius.only(
               bottomLeft: Radius.circular(30.0),
               bottomRight: Radius.circular(30.0),
             ),
             ),
             child: SvgPicture.asset(image,height: 15,width: 15, ),
              ),
              const SizedBox( height: 25,),
               Text(title, style: const TextStyle( color: Colors.grey),
               ),
          ],
      ),
        ),
       ),
    );
  }
}

showDialogWidget(BuildContext context) {
  List data = [ "Message", " Add to Favourite", "Video Call", "Report this User", " Service only permit to the premium User", " Service only permit to the premium User",];
  AlertDialog alert =  const AlertDialog(
  );

  showDialog(
    context: context, 
    builder: (BuildContext context){
      return   AlertDialog(
        backgroundColor:  const Color.fromRGBO(236, 247, 251, 1),
         shape: const RoundedRectangleBorder(borderRadius: 
         BorderRadius.all(Radius.circular(30))),
        content: Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          width: 400,
          child:ListView.builder(
          shrinkWrap: true,
         itemCount: 6,
         itemBuilder: (BuildContext context, int index) {
        return  Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Container(
            height: 40,
            color:  const Color.fromRGBO(255, 255, 255, 1),
            child:  Column(
              children: [
                AlertListCard(title: data[index],),
                ]),
          ),
        );
      },
    ),
 ),
        actions: [
         Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: SizedBox(
                 width: 200,
                 child: MaterialButton(
                   onPressed: () {
                     Navigator.pop(context);
                   },

                   color: const Color.fromRGBO(36, 98, 127, 1),
                   child:  const  Text("Back", style:  TextStyle(
                     color: Colors.white, 
                     fontWeight: FontWeight.bold),),
                     shape:  RoundedRectangleBorder
                     (
                       borderRadius:  BorderRadius.circular(20.0),),
                   ),
                ),
              ),
            ),
        ],
      );
    }
    
  );
}

class AlertListCard extends StatelessWidget {
  String title;

   AlertListCard({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
       dense: true,
       visualDensity: const VisualDensity(vertical: -3), 
      shape: RoundedRectangleBorder(
        side:const  BorderSide(
        color:  Colors.grey, width: 0),
         borderRadius: BorderRadius.circular(5)),
        title:  Text(title, 
        style: const TextStyle( 
        color: Colors.grey,
        fontWeight: FontWeight.bold,
         fontSize: 10, ),),
       
       trailing: Container(
        width: 40,
        color: const Color.fromRGBO(236, 247, 251, 1),
        child: const  Icon(Icons.arrow_forward, color: Color.fromRGBO(0, 191, 175, 1),)),
     
    );
  }
}
