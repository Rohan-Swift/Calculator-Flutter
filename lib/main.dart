import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Add(),
                    ),
                  );
                },
                child: const Text('ADD'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Sub(),
                    ),
                  );
                },
                child: const Text("SUB"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Mul(),
                    ),
                  );
                },
                child: const Text('MUL'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Div(),
                    ),
                  );
                },
                child: const Text("DIV"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String res = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addition'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 1'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 2'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  int sum = int.parse(num1.text) + int.parse(num2.text);
                  res = sum.toString();
                });
              },
              child: const Text('+')),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: Text('Sum: $res'),
          ),
        ],
      ),
    );
  }
}

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  State<Sub> createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String res = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subtraction'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 1'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num1,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 2'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  int dif = int.parse(num1.text) - int.parse(num2.text);
                  res = dif.toString();
                });
              },
              child: const Text('-')),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: Text('Diff: $res'),
          ),
        ],
      ),
    );
  }
}

class Mul extends StatefulWidget {
  const Mul({Key? key}) : super(key: key);

  @override
  State<Mul> createState() => _MulState();
}

class _MulState extends State<Mul> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String res = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplication'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 1'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 2'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  int prod = int.parse(num1.text) * int.parse(num2.text);
                  res = prod.toString();
                });
              },
              child: const Text('*')),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: Text('Prod: $res'),
          ),
        ],
      ),
    );
  }
}

class Div extends StatefulWidget {
  const Div({Key? key}) : super(key: key);

  @override
  State<Div> createState() => _DivState();
}

class _DivState extends State<Div> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String res = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Division'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 1'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: TextField(
              decoration: const InputDecoration(
                label: Text('Num 2'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              controller: num2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  double diff = int.parse(num1.text) / int.parse(num2.text);
                  res = diff.toString();
                });
              },
              child: const Text('/')),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            child: Text('Quot: $res'),
          ),
        ],
      ),
    );
  }
}
