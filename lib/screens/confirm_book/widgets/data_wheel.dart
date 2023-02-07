import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
class WidgetPage extends StatefulWidget {
  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white12!,
                  Colors.white,
                ],
                stops: const [0.7, 1.0],
              )),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: DatePickerWidget(
                    looping: false, // default is not looping
                    firstDate: DateTime.now(), //DateTime(1960),
                    dateFormat:
                    // "MM-dd(E)",
                    "dd(E)/MMMM/yyyy",
                    // locale: DatePicker.localeFromString('th'),
                    onChange: (DateTime newDate, _) {
                      setState(() {
                        _selectedDate = newDate;
                      });
                      print(_selectedDate);
                    },
                    pickerTheme:  DateTimePickerTheme(
                      backgroundColor: Colors.transparent,
                      itemTextStyle:
                     const TextStyle(color: Colors.black, fontSize: 19),
                      dividerColor: Colors.grey.withOpacity(.5),
                    ),
                  ),
                ),
                //Text("${_selectedDate ?? ''}"),
              ],
            ),
          ),
        ),
      ),
    );}}