import 'package:flutter/material.dart';
import 'package:khata/views/global/global_design.dart';

class AddAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Add Amount"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              _titleText("Person Name"),
              _personName(),
              SizedBox(height: 10),
              _titleText("Description"),
              _description(),
              SizedBox(height: 10),
              _titleText("Amount"),
              _amount(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _personName() {
    return TextFormField(
      style: TextStyle(color: Color(0xff707070)),
      validator: (value) {
        if (value.isEmpty) {
          return "Enter Person Name";
        }
        return null;
      },
      // inputFormatters: [
      //   LengthLimitingTextInputFormatter(300),
      // ],
      onChanged: (value) {},
      decoration: decoration(hintText: "Person Name"),
    );
  }

  Widget _description() {
    return TextFormField(
      style: TextStyle(color: Color(0xff707070)),
      validator: (value) {
        if (value.isEmpty) {
          return "Enter Description";
        }
        return null;
      },
      // inputFormatters: [
      //   LengthLimitingTextInputFormatter(300),
      // ],
      onChanged: (value) {},
      decoration: decoration(hintText: "Description"),
    );
  }

  Widget _amount() {
    return TextFormField(
      style: TextStyle(color: Color(0xff707070)),
      validator: (value) {
        if (value.isEmpty) {
          return "Enter Amount";
        }
        return null;
      },
      // inputFormatters: [
      //   LengthLimitingTextInputFormatter(300),
      // ],
      onChanged: (value) {},
      keyboardType: TextInputType.number,
      decoration: decoration(hintText: "Amount"),
    );
  }

  Widget _titleText(String text) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 5,
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 10, color: Colors.black),
      ),
    );
  }
}
