import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  var scrollController=ScrollController();
  var list=[];
  var isLoading=false;
  var offSet=0;
  @override
  void initState() {
    list.add('Samir-1');
    list.add('Samir-2');
    list.add('Samir-3');
    list.add('Samir-4');
    list.add('Samir-5');
    list.add('Samir-6');
    list.add('Samir-7');
    list.add('Samir-8');
    list.add('Samir-8');
    list.add('Samir-10');
    list.add('Samir-11');
    list.add('Samir-12');
    list.add('Samir-13');
    list.add('Samir-14');
    list.add('Samir-15');
    list.add('Samir-16');
    list.add('Samir-17');
    list.add('Samir-18');
    list.add('Samir-19');
    list.add('Samir-20');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {




    scrollController.addListener(() {

      if(scrollController.position.maxScrollExtent == scrollController.position.pixels){
        // isLoading=true;
        setState(() {


          list.add('Samir-21');
          list.add('Samir-22');
          list.add('Samir-23');

          isLoading=false;
        });
        offSet++;
        print('ScrollController Position: ${scrollController.position.maxScrollExtent}');
        print('ScrollController Position: ${scrollController.position.pixels}');
        print('ScrollController ended');
        print('ScrollController ended Count: $offSet');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {

                return ListTile(
                  title: Text(list[index].toString()),

                );
              },


            ),
            isLoading==true?Container(
              // color: Colors.amber,
              width: 40,
              height: 40,
              child: const CircularProgressIndicator(),
            ):Container(),
          ],
        ),
      ),

    );
  }
}
