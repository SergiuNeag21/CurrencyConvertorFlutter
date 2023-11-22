import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue,
        ),
        useMaterial3: true,
      ),
    //
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Currency Convertor",
    //         style: TextStyle(
    //           fontWeight: FontWeight.bold,
    //           fontSize: 25,
    //           color: Colors.white
    //         ),
    //       ),
    //       centerTitle: true,
    //     ),
    //   )
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double numberFromTextfield = 0.0;
  @override
  Widget build(BuildContext context) {
    double result = numberFromTextfield * 4.97;
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Convertor",
        style: TextStyle(
        color: Colors.white, // Set text color to white
        fontWeight: FontWeight.bold,
        fontSize: 26,
        ),
        )

      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 250,
          child:Image.network("https://cdn.shopify.com/app-store/listing_images/b33f6d876accac12b91af70e42dabbdb/icon/CK-cufzoue8CEAE=.png",
          fit: BoxFit.contain,)),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(labelText: 'Enter Amount of Euros: '),
            onChanged: (String value){
              setState(() {
                numberFromTextfield = double.tryParse(value) ?? 0.0;
              });
            },
          ),
          SizedBox(height: 20),
          Text('$result RON',
            style: TextStyle(fontSize: 35),),
        ],
      )
    );
  }
}






