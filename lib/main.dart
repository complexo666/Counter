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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int count = 0;

  void contagemNeg() {
    setState(() {
      count--;
    });
    print(count);
  }

  void contagemPos() {
    setState(() {
      count++;
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isFull ? 'Lotado' : 'Adicione ou retire',
            style: TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            isEmpty ? 'Vazio' : '',
            style: TextStyle(
                fontSize: 26, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(count.toString(),
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w800)),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: isEmpty ? null : contagemNeg,
                style: TextButton.styleFrom(
                    backgroundColor: isEmpty ? Colors.white30 : Colors.white,
                    fixedSize: const Size(100, 100),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    )),
                child: Text(
                  '-',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: isFull ? null : contagemPos,
                style: TextButton.styleFrom(
                  backgroundColor:
                      isFull ? Color.fromARGB(255, 255, 0, 0) : Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
                child: Text(
                  '+',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
