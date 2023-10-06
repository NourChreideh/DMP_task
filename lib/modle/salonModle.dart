class SalonItems {
  final String name;
  final String salonphoto;
    final String logophoto;

  SalonItems({required this.name, required this.salonphoto,required this.logophoto});
}
 final List<SalonItems> items = [
    SalonItems(
      name: 'Sara’s Salon',
      salonphoto: 'assets/images/salon1.jpg',
      logophoto: 'assets/images/firstlogo.png',
    ),
    SalonItems(
      name: 'Lana’s Salon',
      salonphoto: 'assets/images/salon2.jpg',
        logophoto: 'assets/images/secondlogo.png',
    ),
    SalonItems(
      name: 'Queen’s Salon',
      salonphoto: 'assets/images/salon3.jpg',
        logophoto: 'assets/images/firstlogo.png',
    ),
        SalonItems(
      name: 'Rola’s Salon',
      salonphoto: 'assets/images/salon4.jpg',
        logophoto: 'assets/images/secondlogo.png',
    ),
 
  ];