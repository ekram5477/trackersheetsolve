import 'package:flutter/material.dart';

class Problem04 extends StatelessWidget {
  const Problem04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Problem 04')),
        backgroundColor: Colors.pink[200],
      ),


      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text('Default Text Style'),
           const SizedBox(height: 10.0),
            

            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            
           const SizedBox(height: 10.0),


            Text(
              'Italic Text with Custom Color',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.green[600],
                fontSize: 18.0,
              ),
            ),
            
           const SizedBox(height: 10.0),

   
            Text(
              'Underlined Text',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2.0,
                color: Colors.purple,
              ),
            ),
            
           const SizedBox(height: 10.0),

            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Mixed ',
                    style: TextStyle(
                      color: Colors.orange[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Style ',
                    style: TextStyle(
                      color: Colors.teal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  TextSpan(
                    text: 'Text',
                    style: TextStyle(
                      color: Colors.indigo,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            

           const SizedBox(height: 10.0),

       
            Text(
              'Text with Shadow',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.grey,
                    offset: Offset(5.0, 5.0),
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