import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();
  TextEditingController t7 = TextEditingController();
  TextEditingController t8 = TextEditingController();
  TextEditingController t9 = TextEditingController();
  TextEditingController t10 = TextEditingController();
  TextEditingController t11 = TextEditingController();
  TextEditingController t12 = TextEditingController();
  TextEditingController t13 = TextEditingController();
  List<int> list = [];

  int max() {
    return list.reduce((value, element) => value > element ? value : element);
  }

  int min() {
    return list.reduce((value, element) => value < element ? value : element);
  }

  int sum() {
    return list.reduce((value, element) => value + element);
  }

  rev() {
    return list.reversed.toList();
  }

  // double avg(){
  //   return list.isEmpty ? 0 : sum / list.length;
  // }
  //
  // void mn(){
  //  var list3=[1,2,3];
  //   var list1=list3.reversed;
  //   // var list2=new List.from(list1);
  //   print(list1);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Count'),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        controller: t1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Number'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t2,
                          // validator: (value){
                          //   if(value==null||value.length){
                          //     return'enter valid count';
                          //   }
                          // },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      // if(_formkey.currentState!.validate());
                      setState(() {
                        list.add(int.parse(t2.text));
                      });
                    },
                    child: Text("add")),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(border: Border.all()),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Text(list[index].toString());
                      }),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (list.length == int.parse(t1.text))
                      {
                        max();
                        min();
                        t3.text = max().toString();
                        t4.text = min().toString();

                        sum();
                        t7.text = sum().toString();

                        t8.text = (list.isEmpty
                                ? 0
                                : (int.parse(t7.text) / list.length))
                            .toString();

                        t9.text = list.where((item) => item > 10).toString();

                        t10.text = list.map((item) => item * item).toString();

                        t11.text =
                            list.where((number) => 0 > number).toString();

                        t12.text =
                            list.where((number) => 0 < number).toString();

                        t13.text = rev().toString();

                        list.sort((a, b) => a.compareTo(b));
                        t5.text = list.toString();

                        list.sort((b, a) => a.compareTo(b));
                        t6.text = list.toString();
                        String c = "Hello";
                        String c1 = "";
                        for (int i = 0; i < c.length; i++) {
                          if (i == 1) {
                            c1 += c[i].toUpperCase();
                          } else {
                            c1 += c[i];
                          }
                        }
                        print(c1);
                      } else {
                        // print("Enter valid count");
                        final snackBar = SnackBar(
                          content: const Text('Enter valid count'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text('calculate')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('max value'),
                    SizedBox(
                      width: 150,
                      child: TextFormField(
                        controller: t3,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('min value'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t4,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('asc'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t5,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('desc'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t6,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('sum'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t7,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('avg'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t8,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('>10'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t9,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Square'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t10,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Negative'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t11,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Positive'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t12,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Reverse'),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          controller: t13,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
