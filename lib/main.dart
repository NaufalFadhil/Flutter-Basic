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
      home: NavigationFirstScreen(),
    );
  }
}

class NavigationFirstScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return NavigationSecondScreen(message);
              })
            );
          },
        ),
      ),
    );
  }
}

class NavigationSecondScreen extends StatelessWidget {
  final String message;

  NavigationSecondScreen(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


class ExpandedFlexibleScreen extends StatelessWidget {
  const ExpandedFlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(
              color: Colors.white
            )
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Expanded',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24
              ),
            ),
          ),
        ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal,
            border: Border.all(
                color: Colors.white
            )
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container(
          color: Colors.red,
        )),
        Expanded(child: Container(
          color: Colors.orange,
        )),
        Expanded(child: Container(
          color: Colors.grey,
        )),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.green,
          ),
        ),
        Expanded(child: Container(
          color: Colors.purple,
        )),
        Expanded(child: Container(
          color: Colors.blue,
        )),
        Expanded(child: Container(
          color: Colors.indigo,
        )),
        Expanded(child: Container(
          color: Colors.yellow,
        )),
        Expanded(child: Container(
          color: Colors.amber,
        )),
      ],
    );
  }
}


class ListViewSeparatedScreen extends StatelessWidget {

  final List<int> numberList = [3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.black
                ),
              ),
              child: Center(
                child: Text(
                  '${numberList[index]}',
                  style: TextStyle(
                      fontSize: 50
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            // return Devider();
            return Text(
                ' '
            );
          },
          itemCount: numberList.length,
        )
    );
  }
}

class ListViewBuilderScreen extends StatelessWidget {

  final List<int> numberList = [2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.black
                ),
              ),
              child: Center(
                child: Text(
                  '${numberList[index]}',
                  style: TextStyle(
                      fontSize: 50
                  ),
                ),
              ),
            );
          },
        itemCount: numberList.length,
      )
    );
  }
}

class DynamicScrollingScreen extends StatelessWidget {

  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: numberList.map((number) {
          return  Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  color: Colors.black
              ),
            ),
            child: Center(
              child: Text(
                '$number',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ScrollingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.black
              ),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 50
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  color: Colors.black
              ),
            ),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  color: Colors.black
              ),
            ),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                  color: Colors.black
              ),
            ),
            child: Center(
              child: Text(
                '4',
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ImageLocalScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Custom Font',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          'images/frame.png',
          width: 300,
          height: 300,
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

class ImageNetworkScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

class CheckPage extends StatefulWidget {
  @override
  _CheckState createState() => _CheckState();
}


class _CheckState extends State<CheckPage> {
  bool? agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: ListTile(
          leading: Checkbox(
            value: agree,
            onChanged: (bool? value) {
              setState(() {
                agree = value;
              });
            },
          ),
          title: Text('Agree / Disagree'),
        )
    );
  }
}

class RadioPage extends StatefulWidget {
  @override
  _RadioState createState() => _RadioState();
}


class _RadioState extends State<RadioPage> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basic"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Swift'),
          ),
        ],
      )
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}

class SwitchPage extends StatefulWidget {
  @override
  _SwitchState createState() => _SwitchState();
}


class _SwitchState extends State<SwitchPage> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Basic"),
      ),
      body: Switch(
          value: lightOn,
          onChanged: (bool value) {
            setState(() {
              lightOn = value;
            });

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                    lightOn ? 'Light On' : "Light Off"),
                    duration: Duration(seconds: 1),
                ),
            );
          },
        ),
      );
  }
}

class TexteditPage extends StatefulWidget {
  @override
  _TexteditPageState createState() => _TexteditPageState();
}


class _TexteditPageState extends State<TexteditPage> {
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text('Hello, $_name'),
                          );
                        }
                    );
                  },
                  child: const Text('Submit'),
              )
            ],
          ),
        ),
    );
  }
}


class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Basic"),
      ),
      body: ElevatedButton(
        onPressed: () {},
        child: Text("Tombol"),
      )
    );
  }
}

class TextButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Basic"),
        ),
        body: TextButton(
          onPressed: () {},
          child: Text('Text Button'),
        )
    );
  }
}

class OutlinedButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Basic"),
        ),
        body: OutlinedButton(
          onPressed: () {},
          child: Text('Text Button'),
        )
    );
  }
}

class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Basic"),
        ),
        body: IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {},
        )
    );
  }
}

class DropDownButtonPage extends StatefulWidget {
  @override
  _DropDownButtonPageState createState() => _DropDownButtonPageState();
}


class _DropDownButtonPageState extends State<DropDownButtonPage> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: DropdownButton<String>(
          items: const <DropdownMenuItem<String>>[
            DropdownMenuItem<String>(
              value: 'Dart',
              child: Text('Dart'),
            ),
            DropdownMenuItem<String>(
              value: 'Kotlin',
              child: Text('Kotlin'),
            ),
            DropdownMenuItem<String>(
              value: 'Swift',
              child: Text('Swift'),
            ),
          ],
          value: language,
          hint: const Text('Select Language'),
          onChanged: (String? value) {
            setState(() {
              language = value;
            });
          },
        )
    );
  }
}
