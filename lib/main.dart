import 'package:flutter/material.dart';

void main() {
  runApp(const Salman());
}

class Salman extends StatelessWidget {
  const Salman({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

// ignore: must_be_immutable
class Home extends StatelessWidget {
  // const Home({super.key});

  // ignore: non_constant_identifier_names
  var MyItems = [
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "garden",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "bagan",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "uddan",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "flower",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "ful",
    },
    {
      "img":
          "https://th.bing.com/th/id/R.8cf22a569c662c5b5c2dec252a558651?rik=0mK%2fSn9RQgOsEA&riu=http%3a%2f%2fdata.freehdw.com%2fgolden-sunset-on-the-green-field.jpg&ehk=MbefBTWgbtPmFFNvnak94E9C6UKTwiDnPenpIbjrX6A%3d&risl=&pid=ImgRaw&r=0",
      "title": "fuler bangan",
    },
  ];

  Home({super.key});

  // ignore: non_constant_identifier_names
  MySnack(context, msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salman Ahmed"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: () {
                MySnack(context, MyItems[index]['title']);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                width: double.infinity,
                height: 220,
                child: Image.network(
                  MyItems[index]['img']!,
                  fit: BoxFit.fill,
                ),
              ),
            )),
      ),
    );
  }
}
