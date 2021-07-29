import 'package:flutter/material.dart';
import 'package:untitled1/model/dataModel.dart';
import 'package:untitled1/provider/dataProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(children: [
          // here one page but you can add every widget to each screen you want
          // so not exclusive to this screen only
          // you understand me
          TextField(
            decoration: InputDecoration(
              hintText: "Enter name",
            ),
            onChanged: (val) {
              provider.setName(val);
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter password",
            ),
            onChanged: (val) {
              provider.setPassword(val);
            },
          ),
          TextButton(
            onPressed: () async {
              print("name from provider : ${provider.name}");
              print("name from password : ${provider.password}");
              // this line will send to firebase
              // you add like this
              // await FirebaseFirestore.instance
              //     .collection("what your collection is")
              //     .add(
              //       DataModel(
              //         provider.name,
              //         provider.password,
              //       ).toMap(),
              //     );
            },
            child: Text("send data"),
          ),
        ]),
      ),
    );
  }
}
