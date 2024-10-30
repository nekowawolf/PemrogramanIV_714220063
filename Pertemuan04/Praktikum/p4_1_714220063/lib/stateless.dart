import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: <Widget>[

            const Center(
              child: Text(
                'Ranca Upas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), 
              ),
            ),
            const SizedBox(height: 16.0), 

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: <Widget>[
                Column(
                  children: const [
                    Icon(Icons.calendar_today),
                    SizedBox(height: 8.0), 
                    Text('Open Everyday'), 
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.access_time),
                    SizedBox(height: 8.0),
                    Text('09:00 - 20:00'), 
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.monetization_on),
                    SizedBox(height: 8.0),
                    Text('Rp 20.000'), 
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0), 
          
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Ranca Upas Ciwidey adalah kawasan bumi perkemahan di bawah pengelolaan perhutani. Tempat ini berada di kawasan wisata Bandung Selatan, satu lokasi dengan kawah putih, kolam Cimanggu dan situ Patenggang. Banyak hal yang bisa dilakukan di kawasan wisata ini, seperti berkemah, berinteraksi dengan rusa, sampai bermain di water park dan mandi air panas.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}