import 'package:flutter/material.dart';
import 'package:gerencia_estado/app/core/ui/widgets/button_widget.dart';

class HomePage extends StatelessWidget {

  const HomePage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidget(
                  onPressed: (){}, 
                  label: 'SetState'
                ),
                ButtonWidget(
                  onPressed: (){}, 
                  label: 'ValueNotifier'
                ),
                ButtonWidget(
                  onPressed: (){}, 
                  label: 'ChangeNotifier'
                ),
                ButtonWidget(
                  onPressed: (){}, 
                  label: 'Bloc - Streams'
                ),
              ],
            )
          ),
       );
  }
}