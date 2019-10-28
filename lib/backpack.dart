import 'package:flutter/material.dart';

//BackPack is a screen where the user selects everything &
//once all is selected He may proceed

class BackPack extends StatefulWidget {
  @override
  _BackPackState createState() => _BackPackState();
}

class _BackPackState extends State<BackPack> {
  int i = 0;

  List<String> selectedItems = [];

  final List<String> items = [
    "2 pairs of shoes",
    "3 pairs of shorts",
    "3 teeshirts for exercise",
    "1 work shirt",
    "1 undershirt",
    "4 pairs of underwears",
    "4 pairs of socks",
    "2 sweaters",
    "1 spacesuit"
  ];

  @override
  Widget build(BuildContext context) {
    Icon icon = Icon(Icons.check_circle_outline);

    return Scaffold(
      appBar: AppBar(
        title: Text("MyBackPack"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int i) {
          return CheckboxListTile(
            title: Text(items[i]),
            //wether checked or not
            value: selectedItems.contains(items[i]),
            onChanged: (bool isSelected) {
              //if it's clicked add to list
              //Adds to array
              setState(() {
                //if it doesn't exist in our second array add it
                if (!selectedItems.contains(items[i])) {
                  selectedItems.add(items[i]);
                } else {
                  //it already exists and therefore is doubled clicked
                  selectedItems.remove(items[i]);
                }
              });
            },
          );

          /*
          My Version
          return Material(
            //Background
            borderRadius: BorderRadius.circular(10),
            elevation: 10,
            child: Container(
              child: Card(
                child: CheckboxListTile(
                  title: Text(
                    items[i],
                  ),
                  //Wether this checkbox is checked
                  value: selectedItems.contains(items[i]),
                  onChanged: (bool isSelected) {
                    setState(() {
                      if (!selectedItems.contains(items[i])) {
                        selectedItems.add(items[i]);
                      } else {
                        selectedItems.remove(items[i]);
                        print("Removed @ i  $i");
                      }
                    });
                  },
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red.shade500,
                        offset: Offset(0.0, 10.0),
                        //the higher the blurRadius, the more the shadow
                        blurRadius: 40,
                        spreadRadius: 4)
                  ]),
            ),
          );
*/
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () {
          if (selectedItems.length == items.length) {
            print("We can go to the next page!");
          }
        },
      ),
    );
  }
}
