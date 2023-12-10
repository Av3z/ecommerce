import 'package:ecommerce/src/components/drawer_components/drawer_menu.dart';
import 'package:ecommerce/src/components/home_components/logo.dart';
import 'package:ecommerce/src/components/home_components/subtitle.dart';
import 'package:ecommerce/src/components/home_components/title_home.dart';
import 'package:flutter/material.dart';

import '../components/home_components/button.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(context){

    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.transparent, 
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
            // logo
            const Logo(),

            // title
            const SizedBox(height: 68,),
            const TitleHome(),

            // subtitle
            const SizedBox(height: 10,),
            const Subtitle(),

            // button
            const SizedBox(height: 98,),
            Button(onTap: () { Navigator.pushReplacementNamed(context, '/manager'); }),     
            ]),
         ),
    );
  }
}