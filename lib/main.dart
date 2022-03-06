import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: ()
                {

                  showDialog(context: context, builder:
                  (BuildContext context)
                      {
                        return AlertDialog(
                          title: Text("Basit Alert"),
                          content: Text("İçerik"),
                          actions: [
                            TextButton(onPressed: ()
                                {
                                  print('İptal edildi.');
                                Navigator.pop(context);
                                }
                                , child: Text("İptal")),

                            TextButton(onPressed: ()
                            {
                              print('Onaylandı.');
                              Navigator.pop(context);
                            }
                                , child: Text("Tamam")),

                          ],

                        );
                      },
                  );
                  
                  
                }, child: Text("Basit Alert")),

            ElevatedButton(onPressed: ()
            {
              showDialog(context: context, builder:
                  (BuildContext context)
              {
                return AlertDialog(
                  title: Text("Özel Alert", style:  TextStyle(color: Colors.white),),
                  backgroundColor: Colors.indigo,
                  content:
                  SizedBox(
                    height: 100,
                    child: Column(
                    children: [
                      TextField(
                        controller: tfController,
                        decoration: InputDecoration(
                         label: Text("Veri"),
                        ),
                      )
                    ],
                    ),
                  ),

                  actions: [
                    TextButton(onPressed: ()
                    {
                      print('İptal edildi.');
                      Navigator.pop(context);
                    }
                        , child: Text("İptal",style:  TextStyle(color: Colors.white),)),

                    TextButton(onPressed: ()
                    {
                      print('Veri: ${tfController.text}');
                      //print('Veri okundu.');
                      tfController.clear();
                      Navigator.pop(context);


                            }
                        , child: Text("Veri Oku",style:  TextStyle(color: Colors.white)),),

                  ],

                );
              },
              );
            }, child: Text("Özel Alert"))
          ],
        ),
      ),

    );
  }
}
