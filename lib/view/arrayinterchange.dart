import 'package:flutter/material.dart';

class Interchange extends StatefulWidget {
  const Interchange({super.key});

  @override
  State<Interchange> createState() => _InterchangeState();
}

class _InterchangeState extends State<Interchange> {
  List<int> arr1 = [];
  List<int> arr2 = [];
  List<int> temp = [];
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  addtoArray1() {
    String value = num1Controller.text;
    setState(() {
      arr1.add(int.tryParse(value) ?? 0);
    });
    num1Controller.clear();
  }
   addtoArray2() {
    String value = num2Controller.text;
    setState(() {
      arr2.add(int.tryParse(value) ?? 0);
    });
    num2Controller.clear();
  }
  interChang() {
  setState(() {
    temp = List.from(arr1); 
    arr1 = List.from(arr2); 
    arr2 = List.from(temp); 
  });
}
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Array InterChange"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Enter a number for Array1",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          controller: num1Controller,
          cursorColor: Colors.white,
          style: const TextStyle(color: Colors.white),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              constraints: const BoxConstraints(maxWidth: 300),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(width: 2, color: Colors.white),
              )),
        ),
         const SizedBox(
          height: 12,
        ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: addtoArray1,
            child: const Text("Add to array1")),
        const SizedBox(
          height: 12,
        ),
        const Text(
          "Enter a number for Array2",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          controller: num2Controller,
          cursorColor: Colors.white,
          style: const TextStyle(color: Colors.white),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              constraints: const BoxConstraints(maxWidth: 300),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(width: 2, color: Colors.white),
              )),
        ),
        const SizedBox(
          height: 12,
        ),
           ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: addtoArray2,
            child: const Text("Add to array2")),
        const SizedBox(
          height: 12,
        ),
      
        const SizedBox(
          height: 12,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: interChang,
            child: const Text("Interchange")),
        const SizedBox(
          height: 12,
        ),
        arr1.isNotEmpty
       ?const Padding(
         padding:  EdgeInsets.all(8.0),
         child:  Row(
            children: [
               Text("array1:",style: TextStyle(fontSize: 20,color: Colors.white),),
            ],
          ),
       )
       :Container(),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: arr1.length,
            itemBuilder: (context, index) {
          return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
          '${arr1[index]}',
          style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
          );
            },
          ),
        ),
           arr2.isNotEmpty
           ? const Padding(
             padding:  EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Text("array2:",style: TextStyle(fontSize: 20,color: Colors.white),),
               ],
             ),
           )
           :Container(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: arr2.length,
              itemBuilder: (context, index) {
                  return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${arr2[index]}',
              style: const TextStyle(fontSize: 20, color: Colors.white,),
            ),
                  );
              },
            ),
          )
      ])),
    );
  }
}
