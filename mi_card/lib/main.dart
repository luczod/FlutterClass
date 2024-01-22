import 'package:flutter/material.dart';

// dart fix --dry-run
// dart fix --apply
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal, // 0xFF009688
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              const Text(
                'Philipp reis',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'scientist and inventor',
                style: TextStyle(
                  fontFamily: 'Source Sans',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade100,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal.shade100.withOpacity(0.5),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+44 123 456 789',
                    style: TextStyle(
                      color: Colors.teal[700],
                      fontFamily: 'Source Sans',
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'user@email.com',
                    style: TextStyle(
                      color: Colors.teal[700],
                      fontFamily: 'Source Sans',
                      fontSize: 15.0,
                      letterSpacing: 2.5,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


/*child:  Padding(
            padding: const EdgeInsets.all(6.0),
             child: Row(
              children: [
                 const Icon(
                  Icons.email,
                  color: Colors.teal,
               ),
              const SizedBox(
                width: 10.0,
                ),
                Text(
                 'user@email.com',
                  style: TextStyle(
                          color: Colors.teal[700],
                          fontFamily: 'Source Sans',
                          fontSize: 15.0,
                          letterSpacing: 2.5,
                        ),
                      )
                    ],
                  ),
          )*/