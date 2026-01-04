import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.yellow),
      ),
      home: const MyHomePage(title: 'Flutter Home Page Mohit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var arrNames = ['Mohit','Karan','Rahul','Kunal','Sachin','Mohit','Karan','Rahul','Kunal','Sachin'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      // SingleChildScrollView(
      //   child: Center(
      //       child:
            ListView(
              children: [
                Container( //decoration
                  width: 300, height: 300, color: Colors.blue.shade50,
                  child: Center(
                    child: Container(
                      width: 200, height: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        //borderRadius: BorderRadius.only(topLeft: Radius.elliptical(30, 30), bottomRight: Radius.circular(40)),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.green, style: .solid),
                        boxShadow: [BoxShadow(color: Colors.red, blurRadius: 50, spreadRadius: 20)],
                        // shape: .circle
                      ),
                      child: Center(child: Text("data")),
                    ),
                  ),

                ),

                Container(
                      color: Colors.grey,
                      height: 300,
                      width: 300,
                      child: Center(child: Text("Hello Mohit!", style: TextStyle(fontSize: 30, color: Colors.black),)),
                ),
                TextButton(
                    onPressed: (){print("text button tapped!!");},
                    child: Text("Text Button", style: TextStyle(fontSize: 25),)
                ),
                ElevatedButton(
                    onPressed: (){print("elevated button tapped!!");},
                    child: Text("Elevated button", style: TextStyle(fontSize: 25),)
                ),
                OutlinedButton(
                    onPressed: (){print("Outlined button tapped!!");},
                    child: Text("Outline Button", style: TextStyle(fontSize: 25),)
                ),
                Image.asset("assets/images/flogo.png",),
                SingleChildScrollView(
                  scrollDirection: .horizontal,
                  child: Row(
                    mainAxisAlignment: .spaceAround,
                    crossAxisAlignment: .start,
                    children: [
                      Container(height: 100, width: 100, alignment: .center ,child: Text("Row with scroll", style: TextStyle(fontSize: 20),)),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                      Container(
                          width: 100, height: 100,
                          child: Image.asset("assets/images/flogo.png",)
                      ),
                    ],
                  ),
                ), //horizontal scroll
                Container(
                  color: Colors.yellow,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      crossAxisAlignment: .center,
                      children: [
                        Text("A", style: TextStyle(fontSize: 25),),
                        Text("B", style: TextStyle(fontSize: 25),),
                        Text("C", style: TextStyle(fontSize: 25),),
                        Text("D", style: TextStyle(fontSize: 25),),
                        ElevatedButton(onPressed: (){}, child: Text("BTN", style: TextStyle(fontSize: 25),))
                      ],
                    )
                ), //ROW inside

                InkWell(
                  onTap: (){print("tapped!!");},
                  onDoubleTap: (){print("Double tapped!!");},
                  onLongPress: (){print("Long pressed!!");},
                  child: Text("InkWell - Press me!!", style: TextStyle(fontSize: 25, backgroundColor: Colors.green),),
                ),


                //Expended Widget
                Row( //for occuping remaining space
                  children: [
                    Container(width: 50, height: 100, color: Colors.blue,),
                    Container(width: 100, height: 100, color: Colors.orange,),
                    Expanded(child: Container( child: Text("Expended without flex, using all remaining space"), height: 100, color: Colors.red,)),

                  ],
                ),
                Container(height: 300,
                    child: Column( //expended with ratio
                      children: [
                        Expanded(flex: 2, child: Container(color: Colors.brown,)),
                        Expanded(flex: 4, child: Container(color: Colors.yellow)),
                        Expanded(flex: 1, child: Container(color: Colors.red)),
                        Expanded(flex: 3, child: Container(color: Colors.green)),
                      ],
                    )
                ),

                //Margin and Padding
                Container(
                  height: 100, width: .maxFinite, color: Colors.blueGrey,
                  margin: EdgeInsets.all(20),
                  child: Padding(padding: EdgeInsets.all(10),child: Text("Hello World!!", style: TextStyle(fontSize: 25,color: Colors.white),),),
                ),

                //ListView.builder
                Container(
                  height: 50,width: .maxFinite, color: Colors.brown,
                  child: ListView.builder(itemBuilder: (context, index) {
                          return Text(arrNames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),);
                        },
                        itemCount: arrNames.length,
                        itemExtent: 100,
                        scrollDirection: .horizontal,
                      ),
                ),
                //ListView.seperated
                Container(height: 200, width: .maxFinite, color: Colors.pinkAccent,
                  child: ListView.separated(itemBuilder: (context, index) {
                    return Text("Hello " + arrNames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),);
                  },
                      itemCount: arrNames.length,
                      separatorBuilder: (context,index){
                        return Divider(thickness: 4, height: 30,);
                      }
                  ),
                )

                //
              ])
      //     ),
      // ),

    );
  }
}
