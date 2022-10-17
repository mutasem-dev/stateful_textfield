import 'package:flutter/material.dart';
import 'person.dart';
import 'person_card.dart';
void main() {
  runApp(const MyApp());
}
List<Person> persons = [
  Person('Ahmad','19/1234','Hebron','0569878787'),
  Person('Ali ','20/1234','Nablus','0599101235'),
  Person('Muna','21/1234','Bethlehem','022236984'),
];
TextEditingController nameController = TextEditingController();
TextEditingController idController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController phoneController = TextEditingController();
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Persons\' Cards'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name'
              ),
            ),
            TextField(
              controller: idController,
              decoration: InputDecoration(
                  labelText: 'ID'
              ),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  labelText: 'address'
              ),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  labelText: 'phone'
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  persons.add(Person(nameController.text,idController.text
                      ,addressController.text,phoneController.text));
                  setState(() {
                    nameController.clear();
                    idController.clear();
                    addressController.clear();
                    phoneController.clear();
                  });
                },
                child: Text('add person'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: persons.length,
                itemBuilder: (context, index) {
                  return PersonCard(persons[index]);
                },
              ),
            ),
          ],
        ),
        )
      );
  }
}



