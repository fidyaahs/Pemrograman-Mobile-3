import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Twitter'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      color: Colors.white, 
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height /
                        3, 
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/background.png",
                        ),
                        fit: BoxFit.cover, 
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 100 - 16,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Colors.white, 
                          width: 2, 
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/profil.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 50 - 16,
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black, 
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 100,
                          height: 20,
                          color: Colors.transparent,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3 + 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            "UPN Veteran Jawa Timur",
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            "@upnvjt_official",
                            style: TextStyle(
                              fontSize: 12, 
                            ),
                          ),
                        ),
                        Text(
                          "AKUN RESMI UPN \"VETERAN\" JAWA TIMUR\nDikelola oleh Humas UPN \"Veteran\" Jawa Timur\nKampus Bela Negara",
                          style: TextStyle(
                            fontSize: 12, 
                          ),
                        ),
                        SizedBox(height: 8), 
                        Text(
                          "Translated Bio",
                          style: TextStyle(
                            fontSize: 12, 
                            color: Colors.blue, 
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.more_vert, color: Colors.white),
                        onPressed: () {
                        }
                      ),
                    )
                  ),
                  Positioned(
                    top: 10,
                    right: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () {
                        }
                      ),
                    )
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                        }
                      ),
                    )
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