import 'package:flutter/material.dart';

class Datatableapp extends StatefulWidget {
  @override
  _DatatableappState createState() => _DatatableappState();
}

class _DatatableappState extends State<Datatableapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: new AppBar(title: new Text('DataTable')),
            body: DataTable(
              sortAscending: true,
              sortColumnIndex: 1,
              columns: <DataColumn>[
                DataColumn(
                    label: new Text('Firstname'),
                    onSort: (a, b) {
                      setState(() {
                        names
                            .sort((a, b) => a.firstname.compareTo(b.firstname));
                      });
                    }),
                DataColumn(
                    label: new Text('lastname'),
                    onSort: (a, b) {
                      setState(() {
                        names.sort((a, b) => a.lastname.compareTo(b.lastname));
                      });
                    }),
                DataColumn(label: new Text('Ratings'))
              ],
              rows: names
                  .map((name) => DataRow(cells: [
                        DataCell(Text(name.firstname),
                            showEditIcon: true, onTap: () {}),
                        DataCell(Text(name.lastname)),
                        DataCell(Text(name.ratings))
                      ]))
                  .toList(),
            )));
  }
}

class Players {
  String firstname;
  String lastname;
  String ratings;
  Players(this.firstname, this.lastname, this.ratings);
}

var names = [
  Players("Sabil", "Shrestha", "7"),
  Players("Kevin", "DeBryne", '5'),
  Players("Joe", "Hart", '4'),
  Players("David", "Silva", '4'),
  Players("Lionel", "Messi", '5'),
  Players("Christiano", "Ronaldo", '3'),
  Players("David", "Villa", '2'),
  Players("David", "Silva", "3"),
  Players("Manuel", "singh", "4"),
  Players("Kuwasiki", "Honda", "3"),
  Players("Fernandino", "Rio", "4"),
  Players("Vonel", "pessi", "3"),
  Players("Riyad", "Maharz", '2'),
  Players('Ilkay', 'Gundogan', '4'),
  Players('Bartholema', 'Kuma', '3'),
  Players('Roronoa', 'Zoro', '3'),
  Players('Sanji', 'Vinsmoke', '2'),
  Players('Monkey', 'Luffy', '3')
];
