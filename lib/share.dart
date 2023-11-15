import 'package:flutter/material.dart';

class share extends StatefulWidget {
  const share({super.key});

  @override
  State<share> createState() => _shareState();
}

class _shareState extends State<share> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          showBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(
                    child: const Text('close'),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          );

        }, 
        child: const Text('Bottom Sheet'),
        ),
      
    );
  }
}