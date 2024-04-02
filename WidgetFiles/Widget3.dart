class LAB2 extends StatelessWidget {
  const LAB2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My title'),
          backgroundColor: Colors.amber[900],
        ),
        body: Column(
          children: [
            Image(
              image: NetworkImage(
                'data:image/jpeg;base64,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',
              ),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '1975 Porche 911 Carrera',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(
                  Icons.thumb_up,
                ),
                Text(
                  '0',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(Icons.message),
                Text(
                  '0',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 300,
                ),
                Icon(Icons.share),
                Text(
                  'Share',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Essential Information',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Icon(Icons.check),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Year, Make, Model , VIN',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 450,
                ),
                Icon(Icons.airplane_ticket)
              ],
            ),
            Text(
              'Year: 1975',
              textAlign: TextAlign.left,
            ),
            Text('Make: porche'),
            Text('Model: 911 Carrera'),
            Text('VIN: 123456789'),
            Divider(
              color: Colors.black,
            ),
            Row(
              children: [
                Icon(Icons.check),
                Text(
                  'Description',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 550,
                ),
                Icon(Icons.airplane_ticket)
              ],
            ),
            Divider(
              color: Colors.black,
            )
          ],
        ));
  }
}
