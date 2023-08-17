import 'package:dropdown_model_list/drop_down/model.dart';
import 'package:dropdown_model_list/drop_down/select_drop_list.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NationalFlagColumn(),
    ),
  );
}

class NationalFlagColumn extends StatefulWidget {
  NationalFlagColumn({super.key});

  @override
  State<NationalFlagColumn> createState() => _NationalFlagColumnState();
}

class _NationalFlagColumnState extends State<NationalFlagColumn> {
  DropListModel dropListModel = DropListModel([
    OptionItem(id: "1", title: "Jatin Sharma"),
    OptionItem(id: "2", title: "Puneet Chand"),
    OptionItem(id: "3", title: "Vikas Bhardwaj"),
    OptionItem(id: "4", title: "Rakesh Kumar"),
    OptionItem(id: "5", title: "Nitish Kumar")
  ]);

  OptionItem optionItemSelected = OptionItem(title: "Select User");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return NationalFlagRow();
              }));
            },
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    color: Colors.green,
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
          SelectDropList(
            itemSelected: optionItemSelected,
            dropListModel: dropListModel,
            showIcon: true, // Show Icon in DropDown Title
            showArrowIcon: true, // Show Arrow Icon in DropDown
            showBorder: true,
            paddingTop: 0,
            icon: const Icon(Icons.person, color: Colors.black),
            onOptionSelected: (optionItem) {
              optionItemSelected = optionItem;
              setState(() {});
            },
          )
        ],
      ),
    ));
  }
}

class NationalFlagRow extends StatelessWidget {
  const NationalFlagRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 300,
                  color: Colors.green,
                ),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    )),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
