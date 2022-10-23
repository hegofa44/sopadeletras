import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  funcionSopa(){
    String palabra = "CAMA";
    List<String> listPalabra = palabra.split('');
    var listOfLetter = [
      ['D','E','D','I','C','A','R','R'],
      ['X','R','G','F','A','A','O','R'],
      ['G','C','A','S','R','B','Y','L'],
      ['B','A','O','G','B','S','O','C'],
      ['F','A','T','C','O','R','A','A'],
      ['G','A','L','O','T','N','E','M'],
      ['P','A','T','O','S','E','R','A'],
      ['G','A','H','J','N','N','L','M'],
    ];
  for (int k = 0; k < listPalabra.length; k++) {
    for (int i = 0; i < listOfLetter.length; i++) {
      for (int j = 0; j < listOfLetter[i].length; j++) {
        if (listOfLetter[i][j] == listPalabra[k]) {
          print(listOfLetter[i][j]);
          // print('Fila ${i}, columna ${j}');
        }
        }
      }
      
    }
    // print(listOfLetter.length);
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
  var listOfLetter = ['D','E','D','I','C','A','R','R',
      'X','R','G','F','A','A','O','R',
      'G','C','A','S','R','B','Y','L',
      'B','A','O','G','B','S','O','C',
      'F','A','T','C','O','R','A','A',
      'G','A','L','O','T','N','E','M',
      'P','A','T','O','S','E','R','A',
      'G','A','H','J','N','N','L','M'];
    return  Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            print(size.width);
            funcionSopa();
          }, icon: Icon(Icons.add_box_outlined))
        ],
        title: Text('Sopa de letras'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 20.0),
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200]
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.abc)
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){}, child: Text('Buscar:'))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: listOfLetter.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 40,
              maxCrossAxisExtent: (size.width > 400)?50:40,
              childAspectRatio: 4 / 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 3,
              
            ), itemBuilder: (BuildContext context, int index) { 
              // if (listOfLetter[index]=='E' || listOfLetter[index]=='R') {
                
              return Container(
                // d,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[200]
                ),
                alignment: Alignment.center,
                // color: Colors.red,
                child: Text(listOfLetter[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),));
              // }else{
              //   return Container();
              // }
             },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}