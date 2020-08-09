import 'package:flutter/material.dart';
import 'package:khata/views/global/global_design.dart';

class DailyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Details"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _showMyDialog(context);
            },
            icon: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Money",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400], width: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _textWidget(title: "Amount", value: "1000AED"),
                _textWidget(title: "Net Amount", value: "5000AED"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Submitted Money",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400], width: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _textWidget(title: "Date 1", value: "19-10-2020"),
                    _textWidget(title: "Amount", value: "5000AED"),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. T',
                    textWidthBasis: TextWidthBasis.parent,
                  ),
                ),
                Divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _textWidget(title: "Date 2", value: "19-10-2020"),
                    _textWidget(title: "Amount", value: "5000AED"),
                  ],
                ),
                SizedBox(height: 5),
                Divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _textWidget(title: "Date 3", value: "19-10-2020"),
                    _textWidget(title: "Amount", value: "5000AED"),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _textWidget({String title, String value}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                _titleText("Amount"),
                _amount(),
                SizedBox(
                  height: 10,
                ),
                _titleText("Description"),
                _description()
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Update'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _amount() {
    return TextFormField(
      style: TextStyle(color: Color(0xff707070)),
      validator: (value) {
        if (value.isEmpty) {
          return "Enter Ammount";
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
