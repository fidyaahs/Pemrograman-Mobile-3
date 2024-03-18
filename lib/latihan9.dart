import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
          backgroundColor: Colors.blueAccent, 
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              color: Colors.blue, 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Entering a public space?',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white), 
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Stay alert to stay safe',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white), 
                          ),
                        ],
                      ),
                      Image.asset(
                        'images/header.png', 
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255), 
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), 
                    spreadRadius: 2, 
                    blurRadius: 5, 
                    offset: const Offset(0, 2), 
                  ),
                ],
              ),
              child: Row(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_drop_down),
                      SizedBox(width: 5),
                      Text(
                        'Check-in Preference',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                  const Spacer(), // Spacer untuk memberi jarak antara icon dan teks
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.qr_code_scanner, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          'Scan Check-in',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20), // Memberikan jarak
            _buildMenuRow([
              _buildMenuItem('COVID-19 Vaccine', 'images/sertifikat.png',
                  'COVID-19 Vaccine'),
              _buildMenuItem('Covid-19 Test Result', 'images/hasil_tes.png',
                  'Covid-19 Test Result'),
              _buildMenuItem('EHAC', 'images/ehac.png', 'EHAC'),
            ]),
            const SizedBox(height: 20),
            _buildMenuRow([
              _buildMenuItem('Aturan Perjalanan',
                  'images/aturan_perjalanan.png', 'Aturan Perjalanan'),
              _buildMenuItem(
                  'Teledokter', 'images/teledokter.png', 'Teledokter'),
              _buildMenuItem('Pelayanan Kesehatan',
                  'images/pelayanan_kesehatan.png', 'Pelayanan Kesehatan'),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 100, height: 100),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
