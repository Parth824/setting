import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class setting_page extends StatefulWidget {
  const setting_page({Key? key}) : super(key: key);

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  bool l1 = true;
  bool l2 = false;
  bool l3 = true;
  bool isios = false;
  @override
  Widget build(BuildContext context) {
    return (isios == false)
        ? MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                    activeColor: Colors.white,
                    value: isios,
                    onChanged: (val) {
                      setState(() {
                        isios = val;
                      });
                    },
                  ),
                ],
                title: Text("Settings UI"),
                backgroundColor: Color.fromARGB(255, 245, 72, 19),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Common",
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 71, 59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language),
                        title: Text("Language"),
                        subtitle: Text("English"),
                      ),
                      ListTile(
                        leading: Icon(Icons.filter_drama_sharp),
                        title: Text("Environment"),
                        subtitle: Text("Production"),
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 71, 59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.call),
                        title: Text("phone number"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text("Email"),
                      ),
                      ListTile(
                        leading: Icon(Icons.output_outlined),
                        title: Text("Sign out"),
                      ),
                      Text(
                        "Secutiry",
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 71, 59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.phonelink_lock_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Container(
                                child: SwitchListTile.adaptive(
                                  value: l1,
                                  onChanged: (val) {
                                    setState(() {
                                      l1 = val;
                                    });
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  activeColor: Color.fromARGB(255, 245, 72, 19),
                                  title: Text("Lock app in background"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.fingerprint,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 311,
                              child: SwitchListTile(
                                value: l2,
                                onChanged: (val) {
                                  setState(() {
                                    l2 = val;
                                  });
                                },
                                activeColor: Color.fromARGB(255, 245, 72, 19),
                                contentPadding: EdgeInsets.zero,
                                title: Text("User fingerprint"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 310,
                              child: SwitchListTile(
                                value: l3,
                                onChanged: (val) {
                                  setState(() {
                                    l3 = val;
                                  });
                                },
                                activeColor: Color.fromARGB(255, 245, 72, 19),
                                contentPadding: EdgeInsets.zero,
                                title: Text("Change password"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Misc",
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 71, 59),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.description),
                        title: Text("Terms of Service"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      ListTile(
                        leading: Icon(Icons.collections_bookmark),
                        title: Text("Open source Licenses"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        : CupertinoApp(
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor:  Color.fromARGB(255, 208, 46, 14),
                middle: Text("Setting UI"),
                trailing: CupertinoSwitch(
                    value: isios,
                    onChanged: (val) {
                      setState(() {
                        isios = val;
                      });
                    }),
              ),
              child: Column(
                children: [
                 
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.bottomLeft,
                          color: CupertinoColors.lightBackgroundGray,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Common",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Language",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Engilsh",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_drama_sharp,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Enviroment",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Producation",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.bottomLeft,
                          color: CupertinoColors.lightBackgroundGray,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Account",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Phone number",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.output_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sign out",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.bottomLeft,
                          color: CupertinoColors.lightBackgroundGray,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "secutry",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        
                        Icon(
                          Icons.phonelink_lock_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Lock app in background",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  value: l1,
                                  onChanged: (val) {
                                    setState(() {
                                      l1 = val;
                                    });
                                  },
                                  activeColor: Color.fromARGB(255, 245, 72, 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        
                        Icon(
                          Icons.fingerprint,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Use fingerprint",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  value: l2,
                                  onChanged: (val) {
                                    setState(() {
                                      l2 = val;
                                    });
                                  },
                                  activeColor: Color.fromARGB(255, 245, 72, 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        
                        Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  "Change password",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  value: l3,
                                  onChanged: (val) {
                                    setState(() {
                                      l3 = val;
                                    });
                                  },
                                  activeColor: Color.fromARGB(255, 245, 72, 19),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                   Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          alignment: Alignment.bottomLeft,
                          color: CupertinoColors.lightBackgroundGray,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Misc",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.description,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Terms of Service",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.collections_bookmark,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Open source licenses",
                          style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
