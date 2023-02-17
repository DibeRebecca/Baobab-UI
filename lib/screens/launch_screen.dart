import 'package:flutter/material.dart';

import 'login.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  void initState(){
    super.initState();
    _navigateToNext();
  }
_navigateToNext() async{
  await Future.delayed(Duration(milliseconds: 5000), (){});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:const [
          SizedBox(height: 350,),
         
           Center(child: Text("Baobab",style: TextStyle(fontSize: 22,fontFamily: 'Montserrat', color: Colors.green ,fontWeight: FontWeight.bold)),),
            Center(
            child: Text("Plateforme d'informations de",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
           Center(
            child: Text("l'Université de Lomé",style: TextStyle(fontSize: 18,color: Colors.green),),
          ),
           SizedBox(height: 300,),
           Image(image: AssetImage('assets/images/logo-ul.png',),width: 200,)
        ],
      ) ,) 
    );
  }
}