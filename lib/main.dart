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
      title: 'Calculate',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 159, 159)),
        useMaterial3: true,
      ),
      home: const MyCalculatorPage(title: 'MY CALCULATOR'),
    );
  }
}

class MyCalculatorPage extends StatefulWidget {
  const MyCalculatorPage({super.key, required this.title});
  final String title;

  @override
  State<MyCalculatorPage> createState() => _MyCalculatorPageState();
}

class _MyCalculatorPageState extends State<MyCalculatorPage> {
  String displayText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // ใช้ Icon ลูกศรตามต้องการ
          onPressed: () {
            // ตอบสนองการคลิกที่ Icon ลูกศร
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          buildAnswerWidget(),
          buildNumPadWidget()
        ],
      ),
    );    
  }


  Widget buildAnswerWidget() {
    
    return Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(height: 100),
        color: Color.fromARGB(255, 255, 255, 255),
        child: Align(
            alignment: Alignment.bottomRight,
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(displayText,
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold))
            ])));
  }

 Widget buildNumPadWidget() {
  return Container(
    color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
      children: <Widget>[
        SizedBox(height: 1), // ระยะห่างระหว่างคอลัมน์ด้านล่าง
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('C');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      'C',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8), 
            Expanded(
              child: Container(
                color: Color.fromARGB(126, 207, 206, 220),
                height: 85,
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.backspace), 
                    onPressed: () {
                      setState(() {
                          if (displayText.isNotEmpty) {
                            displayText = displayText.substring(0, displayText.length - 1); // ลบตัวสุดท้าย
                          }
                        });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        SizedBox(height: 8), 
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('7');
                    },
                    child: Text(
                      '7',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('8');
                    },
                    child: Text(
                      '8',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
    
                    });
                      updateDisplayText('9');
                    },
                    child: Text(
                      '9',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(126, 207, 206, 220),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      '÷',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        SizedBox(height: 8), 
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('4');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '4',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('5');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '5',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('6');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(126, 207, 206, 220),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      'x',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        SizedBox(height: 8), // ระยะห่างระหว่างคอลัมน์ด้านล่าง
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('1');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '1',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('2');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
                height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('3');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                color: Color.fromARGB(126, 207, 206, 220),
                 height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
          ],
        ),
        SizedBox(height: 8),
             Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              flex: 3,
              child: Container(
                color: Color.fromARGB(255, 250, 157, 157),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      updateDisplayText('0');// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '0',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              
              child: Container(
                color: Color.fromARGB(126, 207, 206, 220),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
           
            
            SizedBox(width: 16),
            
          ],
        ),
        SizedBox(height: 8), // ระยะห่างระหว่างคอลัมน์ด้านล่าง
        Row(
          children: <Widget>[
            SizedBox(width: 16),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 99, 99),
               height: 85,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      displayText = '';// โค้ดที่ต้องการให้ทำงานเมื่อคลิกปุ่มตัวเลข
                    },
                    child: Text(
                      '=',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
            
            SizedBox(width: 16),
          ],
        ),
      ],
    ),
  );
}

void updateDisplayText(String newText) {
    setState(() {
     if (newText == 'C'|| newText == '=') {
        displayText = ''; // ลบทุกอย่าง
      } else {
        displayText += newText; // เพิ่มค่าใหม่ไปยัง displayText
      }// เพิ่มตัวเลขที่ถูกคลิกลงใน displayText
    });
  }
}




