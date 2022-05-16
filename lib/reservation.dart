// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class reservation extends StatefulWidget {
  @override
  State<reservation> createState() => _reservationState();
}

class _reservationState extends State<reservation> {
  String dropdownvalue = 'Single room';
  var items = [
    'Single room',
    'Double room',
    'Family room ',
    'Suite room',
    'King suite',
  ];
  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF003d5a),
        appBar: AppBar(
          title: Text('Reservation'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF003d5a),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Kişisel Bilgileriniz',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 200,
                    child: Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Name',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Surname',
                            labelStyle: TextStyle(color: Colors.white),
                            hintText: 'Surname',
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Phone',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'Phone',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                        labelStyle: TextStyle(color: Colors.white),
                        hintText: 'E-mail',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${selectedDate.toLocal()}".split(' ')[0],
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    color: Color(0xFFf1be55),
                    onPressed: () => _selectDate(context),
                    child: Text(
                      'Select First Day',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${selectedDate2.toLocal()}".split(' ')[0],
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  RaisedButton(
                    color: Color(0xFFf1be55),
                    onPressed: () => _selectDate2(context),
                    child: Text(
                      'Select Last Day',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Color(0xFFf1be55),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Reservation',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ekle() {}
}
