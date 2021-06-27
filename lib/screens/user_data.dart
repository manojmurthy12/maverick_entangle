import 'package:flutter/material.dart';
import 'package:maverick_entangle/services/preferences.dart';
import 'package:maverick_entangle/utilities/constants.dart';
// import 'package:share/share.dart';



class User_data_screen extends StatefulWidget {
  User_data_screen({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _User_data_screenState createState() => _User_data_screenState();
}

class _User_data_screenState extends State<User_data_screen> {
  @override
  void initState() {
    super.initState();
    //getSavedDocs().then((value) => Document_names = value);
    //appDirectory().then((value) => dir = value);
    // getSem().then((value) async {
    //   semester = value;
    //   //await assignValues(VideoDictionary[semester]);
    // });
    // getBranch().then((value) => branch = value);
    // //Firebase.initializeApp().whenComplete(() {});
  }

  Container preference() {
    return Container(
      color: maincolor,
      child: ListView(
        children: [
          Container(
            height: 280,
            color: Colors.white,
            child: Image.asset(
              'images/setting.jpg',
              scale: 6,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [maincolor, Colors.white],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter)),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    backgroundColor: maincolor2,
                  ),
                  title: Text(
                    (usertitle != null) ? usertitle : 'Your Name',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  //subtitle: Text(_auth.currentUser.email),
                ),
                Container(
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    color: Colors.grey[100],
                    child: const Text(
                      'Sign out',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                    onPressed: () {
                    },
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 80),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(
                    'images/semester.png',
                    scale: 15,
                  ),
                  title: Text(
                    'Semester',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: DropdownButton<String>(
                    value: (semester == 'P-Cycle') ? 'Sem-1' : 'Sem-2',
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    items: <String>[
                      'Sem-1',
                      'Sem-2',
                    ].map<DropdownMenuItem<String>>((String value1) {
                      return DropdownMenuItem<String>(
                        value: value1,
                        child: Text(
                          value1.toString(),
                          style: TextStyle(
                              color: Colors.blueGrey,
                              //fontFamily: mainfont,
                              fontSize: 14),
                        ),
                      );
                    }).toList(),
                    // onChanged: (String newValue) {
                    //   setState(() {
                    //     if (newValue == 'Sem-1') semester = 'P-Cycle';
                    //     if (newValue == 'Sem-2') semester = 'C-Cycle';
                    //     setSem(semester);
                    //     //print(semester);
                    //     //assignValues(VideoDictionary[semester]);
                    //   });
                    // },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset(
                    'images/branch.png',
                    scale: 15,
                  ),
                  title: Text(
                    'Branch',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: DropdownButton<String>(
                    autofocus: false,
                    value: branch,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    items: <String>[
                      'ECE',
                      'CSE',
                      'EEE',
                      'Civil',
                      'Mechanical',
                      'ISE',
                      'Other',
                    ].map<DropdownMenuItem<String>>((String value2) {
                      return DropdownMenuItem<String>(
                        value: value2,
                        child: Text(
                          value2.toString(),
                          style: TextStyle(
                              color: Colors.blueGrey,
                              //fontFamily: mainfont,
                              fontSize: 14),
                        ),
                      );
                    }).toList(),
                    // onChanged: (String newValue) {
                    //   setState(() {
                    //     branch = newValue;
                    //     setBranch(branch);
                    //   });
                    // },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                ),
                FlatButton.icon(
                  onPressed: () {
                    // Share.share(
                    //     'https://play.google.com/store/apps/dev?id=4633135606490362370'); //TODO: Change the app id
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white60,
                  ),
                  label: Text(
                    'Share this app with your friends',
                    style: TextStyle(color: Colors.white60),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:preference()

    );
  }
}