import 'package:flutter/material.dart';

class reverse extends StatefulWidget {
  const reverse({super.key});

  @override
  State<reverse> createState() => _reverseState();
}

class _reverseState extends State<reverse> {
  final a=TextEditingController();


 rv(){
    var list=[];
    var list1=list.reversed;
    print(list1);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            rv();
            a.text=rv().toString();
          }, child:Text('add')),
          TextFormField(controller: a,),
          // Container(
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //       border: Border.all()
          //   ),
          //   child: ListView.builder(
          //       scrollDirection: Axis.vertical,
          //       itemCount: list.length,
          //       itemBuilder:(context,index)
          //       {
          //         return Text(list[index].toString());
          //       }
          //
          //   ),
          // ),
        ],
      ),
    );
  }
}
