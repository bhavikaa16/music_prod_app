import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music/widgets/service_loc.dart';
import 'package:music/widgets/top_banner.dart';
import 'package:provider/provider.dart';

import '../view_model/service_view_model.dart';
import 'details_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<ServiceViewModel>(context);

    return Scaffold(
      backgroundColor: Color(0xFF18171C),

        bottomNavigationBar:
        Container(
        decoration: BoxDecoration(
        color: const Color(0xFF18171C), // Dark background
    borderRadius: const BorderRadius.only(
    topLeft: Radius.circular(18),
    topRight: Radius.circular(18),
    ),
    ),
    child:Stack(
      alignment: Alignment.center,
    children: [
      Positioned(
        bottom: 80,
        left: 0,
        right: 0,
        child: Container(
          height: 3,
          decoration: BoxDecoration(
            color: Color(0xFF222226),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),


      const SizedBox(height: 45),
    Positioned(top:6,
    child: Container(width: 40,
    height: 4,
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(2),),),),

    BottomNavigationBar(
    backgroundColor: Colors.transparent,
    type: BottomNavigationBarType.fixed,
    elevation: 0,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          fontFamily: 'OpenSans'
        ),
      unselectedLabelStyle: TextStyle(
          fontFamily: 'OpenSans'
      ),
        items: [
          BottomNavigationBarItem(icon: SizedBox(width:24,height:24,child:Image.asset('assets/img_2.png')),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.newspaper),label:'News'),
          BottomNavigationBarItem(icon: SizedBox(width:24,height:24,child:Image.asset('assets/img_3.png')),label:'TrackBox'),
          BottomNavigationBarItem(icon: Icon(Icons.work_outline),label:'Projects'),
        ],
      ),])),
      body:SafeArea( bottom: true,
        child: SingleChildScrollView(
    child:
    Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TopBanner(),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Hire hand-picked Pros for popular music services',
            style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'OpenSans'),

          ),
        ),

        const SizedBox(height: 10),
        viewModel.isloading?  Center(child: CircularProgressIndicator()):

          ListView.builder(
            padding:  EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: viewModel.services.length,
            itemBuilder: (context,index){
              final service = viewModel.services[index];
              debugPrint("Image path: assets/bg/${service.bgimage}");



              return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/bg/${service.bgimage}"),


                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.65),
                      BlendMode.darken,
                    ),

                  ),
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading:Image.asset(service.icon,width:60),
                  title:Text(service.title,style:const TextStyle(color: Colors.white,fontFamily: 'Poppins')),
                  subtitle: Text(service.description,style: const TextStyle(color: Colors.white,fontFamily: 'OpenSans',fontSize: 12),maxLines: 1,),
                  trailing: const Icon(Icons.arrow_right,color:Colors.white54,size:30),
                  onTap: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_)=>DetailScreen(serviceName:service.title),
                      ),);
                  },
                ),);
            }),
             ]),
      )

    )




    ), ));}}









