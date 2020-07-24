import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'Login.dart';

class Home extends StatelessWidget {
  var data;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female'];
  var yesNo = ['Yes', 'No'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Kidney Diagnosis'),
//        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: <Widget>[
          Row(
            children: <Widget>[
//              Text(
//                "Kidney Diagnosis", textAlign: TextAlign.right,
//                style: TextStyle(fontSize: 16, color: Colors.white),
//              ),
              SizedBox(
                width: 2,
              ),
              IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  })
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView(
          children: <Widget>[
            FormBuilder(
              // context,
              key: _fbKey,
              // autovalidate: true,
              initialValue: {
                'value': 3,
              },
              child: new Container(
                padding: EdgeInsets.all(8.0),
                child: new Column(
                  children: <Widget>[
                    SizedBox(height: 5),
                    FormBuilderDropdown(
                      attribute: 'gender',
                      decoration: const InputDecoration(
                        labelText: 'Gender',
                      ),
                      // initialValue: 'Male',
                      hint: Text('Select Gender'),
                      validators: [FormBuilderValidators.required()],
                      items: genderOptions
                          .map((gender) => DropdownMenuItem(
                                value: gender,
                                child: Text('$gender'),
                              ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderTextField(
                      attribute: 'age',
                      decoration: const InputDecoration(
                        labelText: 'Age',
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) {
                        return text == null ? null : num.tryParse(text);
                      },
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(2, allowEmpty: false),
                      ],
                      keyboardType: TextInputType.number,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderTextField(
                      attribute: 'bloodPressure',
                      decoration: const InputDecoration(
                        labelText: 'Blood Pressure',
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) {
                        return text == null ? null : num.tryParse(text);
                      },
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(4, allowEmpty: false),
                      ],
                      keyboardType: TextInputType.number,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderTextField(
                      attribute: 'bloodUrea',
                      decoration: const InputDecoration(
                        labelText: 'Blood Urea',
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) {
                        return text == null ? null : num.tryParse(text);
                      },
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(4, allowEmpty: false),
                      ],
                      keyboardType: TextInputType.number,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderTextField(
                      attribute: 'creatinine',
                      decoration: const InputDecoration(
                        labelText: 'Creatinine',
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) {
                        return text == null ? null : num.tryParse(text);
                      },
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(2, allowEmpty: false),
                      ],
                      keyboardType: TextInputType.number,
                    ),
//                    SizedBox(height: 15),
                    FormBuilderTextField(
                      attribute: 'potassium',
                      decoration: const InputDecoration(
                        labelText: 'Potassium',
                      ),
                      onChanged: _onChanged,
                      valueTransformer: (text) {
                        return text == null ? null : num.tryParse(text);
                      },
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.numeric(),
                        // FormBuilderValidators.max(70),
                        FormBuilderValidators.minLength(2, allowEmpty: false),
                      ],
                      keyboardType: TextInputType.number,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderDropdown(
                      attribute: 'hypertension',
                      decoration: const InputDecoration(
                        labelText: '',
                      ),
                      // initialValue: 'Male',
                      hint: Text('Do you have Hypertension'),
                      validators: [FormBuilderValidators.required()],
                      items: yesNo
                          .map((hypertension) => DropdownMenuItem(
                                value: hypertension,
                                child: Text('$hypertension'),
                              ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderDropdown(
                      attribute: 'diabetes',
                      decoration: const InputDecoration(
                        labelText: '',
                      ),
                      hint: Text('Do you have Diabetes'),
                      validators: [FormBuilderValidators.required()],
                      items: yesNo
                          .map((diabetes) => DropdownMenuItem(
                                value: diabetes,
                                child: Text('$diabetes'),
                              ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),
//                    SizedBox(height: 10),
                    FormBuilderDropdown(
                      attribute: 'anemie',
                      decoration: const InputDecoration(
                        labelText: '',
                      ),
                      hint: Text('Do you have Anemie'),
                      validators: [FormBuilderValidators.required()],
                      items: yesNo
                          .map((anemie) => DropdownMenuItem(
                                value: anemie,
                                child: Text('$anemie'),
                              ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                        height: 50,
                        width: 380,
                        child: RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.deepPurpleAccent)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Prediction Results"),
                                    actions: <Widget>[
                                      Text("\n"),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "  Status        :   ",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "  Positive",
                                            style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "  GFR            :   ",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            "  249.5 mL/min/1.73 m2",
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "  Stage 01   :   ",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "  Normal",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(10),
                                          child: Center(
                                              child: Text(
                                            'To slow kidney damage in Stage 01 control your blood sugar if you have diabetes. Keep a healthy blood pressure. Eat a healthy diet. Do not smoke or use tobacco. Exercise 30 minutes a day. 5 days a week and Keep a healthy weight. ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ))),
                                      FlatButton(
                                        child: Text("OK"),
                                        onPressed: () {
                                          //Put your code here which you want to execute on No button click.
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          color: Colors.deepPurpleAccent,
                          textColor: Colors.white,
                          child: Text("Predict Result".toUpperCase(),
                              style: TextStyle(fontSize: 17)),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
