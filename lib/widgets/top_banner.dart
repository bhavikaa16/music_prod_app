import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget{
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
        children: [
    Container(
      width: double.infinity,
    height: 300,
    padding:  EdgeInsets.zero,
    decoration: BoxDecoration(
    gradient: RadialGradient(
      center: Alignment.topCenter,
      radius: 2.0,
    colors: [Color(0xFFB0003A),
      Color(0xFF4A001F),],
      stops: [0.1, 0.9],
    ),
    borderRadius: const BorderRadius.only(
    bottomLeft: Radius.circular(24),
    bottomRight: Radius.circular(24),
    ),
    ),
     child:Padding(
       padding: const EdgeInsets.all(16.0),
       child: Column(

           crossAxisAlignment: CrossAxisAlignment.center,

           children:[

           Row (mainAxisAlignment: MainAxisAlignment.start,

           children: [
           Expanded(child: TextField(
           decoration: InputDecoration(
           filled: true,
           fillColor: Color(0xFF2F2F39),

           prefixIcon: Icon(Icons.search,color: Colors.white),
           suffixIcon: Container(
             padding: EdgeInsets.symmetric(horizontal: 8),
             child: Row(
               mainAxisSize: MainAxisSize.min,
               children: [
               Container(
               width: 1,
               height: 24,
               color: Color(0xFF61616B), // vertical line
             ),
             SizedBox(width: 2),
           IconButton(
           icon: Icon(Icons.mic, color: Colors.white),
           onPressed: () {
           print("Mic tapped");
           },),
           ],),),
           hintText: "Search 'Punjabi Lyrics'",
           hintStyle: TextStyle(color:Color(0xFF61616B),fontFamily: 'OpenSans',fontSize: 15),
           border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
           borderSide: BorderSide.none,
           ),),
           style: TextStyle(color: Colors.white),
           )),
           const SizedBox(width: 10),
             CircleAvatar(
               radius: 20,
               backgroundColor: Color(0xFFE1D7FF),
               child: ClipOval(
                 child: Image.asset(
                   'assets/img_4.png',
                   width: 28,
                   height: 28,
                   fit: BoxFit.cover,
                 ),
               ),
             )

           ],),




           const SizedBox(height: 24),
          const Text( 'Claim your',
           style: TextStyle(color: Colors.white70, fontSize: 16,fontWeight: FontWeight.w800,fontFamily: 'OpenSans'),
           ),
             const SizedBox(height: 5),
           const Text(
           'Free Demo',
           style: TextStyle(
           color: Colors.white,
           fontSize: 33,
           fontWeight: FontWeight.w900
        ,fontFamily: 'Lobster'

           ),
           ),
             const SizedBox(height: 5),

             const  Text(
           'for custom Music Production',
           style: TextStyle(color: Colors.white70, fontSize: 14,fontFamily: 'OpenSans',fontWeight: FontWeight.w800),
           ),
           const SizedBox(height: 20),
           ElevatedButton(
           onPressed: () {},
           style: ElevatedButton.styleFrom(
           backgroundColor: Colors.white,
           foregroundColor: Colors.black,
           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
           ),
           ),
           child: const Text('Book Now',style: TextStyle(fontFamily: 'Poppins'),),
           ),
           ],),
     ),
    ),


    Positioned(

    left:-20,
bottom:10,


    child: Image.asset(
    'assets/img_1.png',
    width: 120,
    ),
    ),
    Positioned(

    bottom: 10,
    right: -30,

    child: Image.asset(
    'assets/img.png',
    width: 120,

    ),
    ),],);


  }
}