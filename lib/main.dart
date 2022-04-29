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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'SELAMAT DATANG'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children: [
         Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          padding: const EdgeInsets.only(top: 64.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0)
              ),
            ),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: NetworkImage("https://scontent-sin6-1.xx.fbcdn.net/v/t31.18172-8/10557149_1501364603432459_4348081909003327504_o.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeHg3h2a41vI1FB7wctZBTmffPYqHEAaT8h89iocQBpPyGmyg02dAvTkbvzciOtO3his41jjef65Obpoh3Uabvq0&_nc_ohc=p34Ls2Hp_wwAX-Am9iV&_nc_ht=scontent-sin6-1.xx&oh=00_AT9US3ePDL2kgWnqTRow7E8faA3TQWZVmiw8iKjDCzR6HQ&oe=6290CB66"),
                ),
                Text(
                  'Guntur', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Text(
                  'lecture', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),
                  
                ) 
              ],
            
            )
          ),
         Container(
            width: MediaQuery.of(context).size.width,
            padding:const EdgeInsets.only(left:50.0, right:50.0),
            child: Column(
             children: [
              const SizedBox(height: 30.0),
              const Text("about me",
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 16.0,
               ),
              ),
              const SizedBox(height: 20.0),
              const Text("hi, currently I am lecturing at the Engineering and Informatics Faculty of Universitas Pendidikan Nasional", 
              textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              Container(
                margin: const EdgeInsets.only(left: 75.0, right: 75.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              const SizedBox(height:16.0),
              const Text("Skills",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Column(
                    children:[
                      Row(
                        children: [
                          const Text('4'),
                          const Icon(
                            Icons.star,
                            size: 16.0, 
                            color: Colors.yellow
                            ),
                        ],
                      ),
                      Text("Mikrotik"),
                    ],
                  ),
                  Column(
                    children:[
                      Row(
                        children: [
                          const Text('4'),
                          const Icon(
                            Icons.star,
                            size: 16.0, 
                            color: Colors.yellow
                            ),
                        ],
                      ),
                      Text("Cisco"),
                    ],
                  ),
                  Column(
                    children:[
                      Row(
                        children: [
                          const Text('4'),
                          const Icon(
                            Icons.star,
                            size: 16.0, 
                            color: Colors.yellow
                            ),
                        ],
                      ),
                      Text("Microsoft"),
                    ],
                  ),
                  Column(
                    children:[
                      Row(
                        children: [
                          const Text('4'),
                          const Icon(
                            Icons.star,
                            size: 16.0, 
                            color: Colors.yellow
                            ),
                        ],
                      ),
                      Text("Ruijie"),
                    ],
                  ),
                ],
              ),
              const SizedBox( height: 25.0),
              const Text("Find Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                ),
              ),
              const SizedBox(height: 16.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.telegram,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.whatsapp,
                    color: Colors.green,
                  ),
                ],
              )
            ],
           ),
         ), 
        ]
      ) 
    );
  }
}
