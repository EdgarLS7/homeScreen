import 'package:flutter/material.dart';

class KudosJ {
  const KudosJ(
    this.name,
    this.kudo,
    this.image,
  );

  final String name;
  final String kudo;
  final ImageProvider<Object> image;

  static const contacts = [
    KudosJ(
      'Bette Gracey',
      'Por traer gorrito',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    
    KudosJ(
      'Armenta Ross',
      'Por ayudarme con mis tareas',
      NetworkImage('https://via.placeholder.com/300x400')
    ),

    KudosJ(
      'Armenta Ross',
      'Por regalarme una paleta',
      NetworkImage('https://via.placeholder.com/300x400')
    ),

    KudosJ(
      'Armenta Ross',
      'Por ser hijo del lechero',
      NetworkImage('https://via.placeholder.com/300x400')
    ),

    KudosJ(
      'Armenta Ross',
      'Por invitarme una torta de la beltran',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por no valer verga',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por limpiar mi espacio de trabajo',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por ayudarme a escribir por que no se',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por lograr terminar algo',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por bañarse todos los dias',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por poner buena musica',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    KudosJ(
      'Armenta Ross',
      'Por desvelarse conmigo',
      NetworkImage('https://via.placeholder.com/300x400')
    ),

    KudosJ(
      'Armenta Ross',
      'Por tener mucho dinero',
      NetworkImage('https://via.placeholder.com/300x400')
    ),
    
  ];
}