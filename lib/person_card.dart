import 'package:flutter/material.dart';
import 'person.dart';
class PersonCard extends StatefulWidget {
  final Person person;
  const PersonCard(this.person, {Key? key}) : super(key: key);

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  _showDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('${widget.person.name} Details',
          style: const TextStyle(fontSize: 30,color: Colors.blue,backgroundColor: Colors.black12),),
          content: Text(widget.person.toString(),
          style: const TextStyle(fontSize: 25),),
          actions: [
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              label: const Text('Close'),
            ),
          ],
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showDialog(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          color: Colors.black12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                       const Text('Name: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                       Text(widget.person.name,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      const Text('Id: ',style: TextStyle(fontSize: 25,color: Colors.blue),),
                      Text(widget.person.id,style: const TextStyle(fontSize: 25,color: Colors.black),)
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/person.png',width: 80,height: 80,),
                  IconButton(
                      onPressed: () {
                        widget.person.fav = !(widget.person.fav);
                        setState(() {

                        });
                      },
                      icon: widget.person.fav ? Icon(Icons.favorite_outlined):Icon(Icons.favorite_outline),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}