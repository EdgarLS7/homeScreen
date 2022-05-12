import 'package:flutter/material.dart';
import 'package:template_kudos_view/models/contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.borderColor,
    required this.contact,
  }) : super(key: key);

  final Color borderColor;
  final Contact contact;

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
                  topRight: Radius.circular(20),),
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
                  // Nombre
                  //---------------------------
                  Row(
                    children: [
                      const  Icon(
                        Icons.person_outline_sharp,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(contact.name, 
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                  
                  //---------------------------
                  // TEXTO KUDO
                  //---------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.mail_outline_outlined,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        contact.address,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.deepPurple,
                        ),
                      )
                    ],
                  ),
                  //---------------------------
                  // Phone Number
                  //---------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.phone_outlined,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        contact.phone,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,),
                      )
                    ],
                  ),
                  //---------------------------
                  // eMail
                  //---------------------------
                  Row(
                    children: [
                      const Icon(
                        Icons.email_outlined,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contact.email,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple,
                            ),
                          ),
                          Text(
                            contact.website,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
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
