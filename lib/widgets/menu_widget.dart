import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500, // Set a fixed height for the GridView
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 0.78,
        children: List.generate(6, (index) {
          return Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 153, 154, 156),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(95, 253, 253, 253),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "singleItemPage");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 120, // Adjust height as needed for InkWell
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Makanan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "50.000,00",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.add_circle_outlined,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
