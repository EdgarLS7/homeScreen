import 'package:flutter/material.dart';
import 'package:template_kudos_view/models/contact.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.borderColor,
    required this.contact,
  }) : super(key: key);

  final Color borderColor;
  final KudosJ contact;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //-----------------------------
        // Card Tab flecha de la tarjeta
        //-----------------------------
        Align(
          heightFactor: 0.9,
          alignment: Alignment.centerLeft,
          child: Container(
            height: 30,
            width: 70,
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 0.1),
              child: Icon(
                Icons.arrow_upward_outlined,
                color: Colors.black,
                size: 23,
              ),
            ),
          ),
        ),

        //-----------------------------
        // Card Body
        //-----------------------------
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),

            //-----------------------------
            // Card Body (Datos)
            //-----------------------------
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---------------------------
                  // NOMBRE
                  //---------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline_sharp,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        contact.name,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),

                  const SizedBox(height: 70,),

                  //---------------------------
                  // TEXTO KUDO
                  //---------------------------
                  Expanded(
                    child: Text(
                      contact.kudo,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  

                  //---------------------------
                  // IMAGE
                  //---------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        Icons.image_outlined,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        contact.image,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
