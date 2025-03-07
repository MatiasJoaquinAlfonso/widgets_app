import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),

  MenuItem(
    title: 'ProgessIndicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),

  MenuItem(
    title: 'SnackBars y Dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.yard_outlined,
  ),

  MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined,
  ),

  MenuItem(
    title: 'UI control + Tiles',
    subTitle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),

  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.accessible_rounded,
  ),
];
