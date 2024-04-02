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
