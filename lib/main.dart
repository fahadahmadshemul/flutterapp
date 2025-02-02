import 'package:flutter/material.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecom",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: "Ecomerce Website"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  //alert dialoag
  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
                title: Text("Alert!"),
                content: Text("Do you want to delete ?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      MySnackBar("Deleted Successfully!", context);
                    },
                    child: Text("Yes"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ));
        });
  }
  //alert dialoag end

  @override
  Widget build(BuildContext context) {
    //elevated button style
    ButtonStyle __button_style = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ));
    //elevated button style end
    //text button style
    ButtonStyle __text_button_style = TextButton.styleFrom(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      foregroundColor: Colors.green,
    );
    //text button style end
    //outline button style start
    ButtonStyle __outline_button_style = OutlinedButton.styleFrom(
        foregroundColor: Colors.green,
        side: BorderSide(color: Colors.green, width: 2));
    //outline button style end
    //__submit_buton_style
    ButtonStyle __submit_buton_style = ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        minimumSize: Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
    //__submit_buton_style end
    //var dynamic data
    var MyItems = [
      {
        'image': 'https://me.fahad.kreativdev.com//img/design.svg',
        'title': "Web Design"
      },
      {
        'image': 'https://me.fahad.kreativdev.com//img/hosting.svg',
        'title': "Web Development"
      },
      {
        'image': 'https://me.fahad.kreativdev.com//img/operation.svg',
        'title': "Bug Fixing"
      }
    ];
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title, style: TextStyle(color: Colors.white)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            //IconButton(onPressed: ({}), icon: Icons.settings)
          ],
          backgroundColor: Colors.green,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.contact_mail), label: "Contact"),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
            )
          ],
          currentIndex: 0,
          backgroundColor: Colors.green,
          onTap: (int index) {
            if (index == 0) {
              MySnackBar("This is Home Bottom", context);
            } else if (index == 1) {
              MySnackBar("This is contact", context);
            } else if (index == 2) {
              MySnackBar("This is account", context);
            } else {
              MySnackBar("Invalid", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.green),
                    currentAccountPicture: Image.network(
                        "https://kreativdev.com/assets/front/img/logo-dark.png"),
                    accountName: Text("Md. Fahad Hossain"),
                    accountEmail: Text("fahadahmadshemul@gmail.com"),
                  )),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.home),
                title: Text("Home"),
                iconColor: Colors.green,
                textColor: Colors.green,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.info),
                title: Text("About"),
                iconColor: Colors.green,
                textColor: Colors.green,
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.person),
                title: Text("Account"),
                iconColor: Colors.green,
                textColor: Colors.green,
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextButton(
                    style: __text_button_style,
                    onPressed: () {},
                    child: Text("Click Me", style: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    style: __button_style,
                    onPressed: () {
                      MyAlertDialog(context);
                    },
                    child: Text("Show Dialog"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: OutlinedButton(
                    style: __outline_button_style,
                    onPressed: () {},
                    child: Text("Click Me"),
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when enabled
                        width: 2.0, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when focused
                        width: 2.0, // Border width
                      ),
                    ),
                    labelText: "Enter Full Name",
                    // label: Text("Enter Your Name"),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when enabled
                        width: 2.0, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when focused
                        width: 2.0, // Border width
                      ),
                    ),
                    labelText: "Enter Email Address",
                    // label: Text("Enter Your Name"),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color
                        width: 2.0, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when enabled
                        width: 2.0, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green, // Border color when focused
                        width: 2.0, // Border width
                      ),
                    ),
                    labelText: "Enter Phone Number",
                    // label: Text("Enter Your Name"),
                  ),
                )),
            Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  style: __submit_buton_style,
                  onPressed: () {},
                  child: Text("Submit"),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  child: Image.network(
                      "https://www.me.fahad.kreativdev.com/public/image/c61f571dbd2fb949d3fe5ae1608dd48b.png"),
                ),
                Container(
                  width: 100,
                  child: Image.network(
                      "https://www.me.fahad.kreativdev.com/public/image/10ffbba2ec9025b945acc154f3403aec.png"),
                ),
                Container(
                    width: 100,
                    child: Image.network(
                        "https://www.me.fahad.kreativdev.com/public/image/177db6acfe388526a4c7bff88e1feb15.png"))
              ],
            ),
          ],
        ));
  }
}
