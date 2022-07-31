import 'package:flutter/material.dart';
import 'package:flutter_app_final_6319c10022/views/sau_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import 'art_sci_ui.dart';
import 'en_ui.dart';
import 'la_ui.dart';

class BsUI extends StatefulWidget {
  const BsUI({Key? key}) : super(key: key);

  @override
  State<BsUI> createState() => _BsUIState();
}

class _BsUIState extends State<BsUI> {
  final Uri toLaunch = Uri(scheme: 'https', host: 'www.sau.ac.th', path: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SAU',
          style:
              TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                'FACULTY OF BUSINESS ADMINISTRATION',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Image(
                image: AssetImage('assets/images/bs.jpg'),
                fit: BoxFit.fitWidth,
                //width: 270,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                'สาขาวิชาการบัญชี',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สาขาวิชาการบริหารทรัพยากรมนุษย์',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สาขาวิชาการตลาดยุคดิจิทัล',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สาขาวิชาระบบสารสนเทศเพื่อธุรกิจดิจิทัล',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สาขาวิชาการจัดการ',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'สาขาวิชาการจัดการนวัตกรรมการค้า',
                style: TextStyle(
                  color: Color.fromARGB(255, 113, 113, 113),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/phone-icon.png'),
                    iconSize: 50,
                    onPressed: () => setState(
                      () {
                        _makePhoneCall('028064500');
                      },
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/Globe-icon.png'),
                    iconSize: 50,
                    onPressed: () => setState(
                      () {
                        _launchInBrowser(toLaunch);
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        //backgroundColor: Colors.grey[400],
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: new DrawerHeader(
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Text(
                              "S",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 23, 0, 139),
                              ),
                            ),
                            Text(
                              "A",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 23, 0, 139),
                              ),
                            ),
                            Text(
                              "U",
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 230, 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Southeast Asia University",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  alignment: Alignment.bottomLeft, // <-- ALIGNMENT
                  height: 10,
                ),
                decoration: BoxDecoration(color: Colors.grey),
              ),
              height: 150, // <-- HEIGHT
            ),
            ListTile(
              title: Text(
                "SAU",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SauUI(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "วิศวกรรมศาสตร์",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnUI(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "วิศวกรรมศาสตร์และวิทยาศาสตร์",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ArtSciUI(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "บริหารธุรกิจ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BsUI(),
                  ),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "นิติศาสตร์",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LaUI(),
                  ),
                );
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
}
