import 'package:flutter/material.dart';

class MessageDetails extends StatelessWidget {
  const MessageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Column(
          children: [
            Text('Pradip'),
            Text('Active Now'),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 300,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  color: Colors.lightBlue.shade100,
                ),
                child: Column(
                  children: [
                    Text(
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text('9:30'), Icon(Icons.check)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
