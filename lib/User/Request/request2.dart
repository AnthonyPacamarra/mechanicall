import 'package:flutter/material.dart';
import 'wait.dart';

class RequestMechanic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: 338,
        height: 540,
        color: Color(0xFF273E47),
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Request Help',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Car breakdown',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "Car won't start. The last time I heard from my car engine was that it sounded weird.",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "ETA: 5 minutes",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Image.asset(
              'assets/au-mechanic-r1.png',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Wait();
                      },
                    );
                  },
                  child: Text('Request'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
