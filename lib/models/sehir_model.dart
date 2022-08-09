import './otel_model.dart';

class Sehir_olustur {
  //String? imageUrl;
  String? city;
  String? country;
  //String? description;
  List<Otel>? oteller;

  Sehir_olustur({
    //this.imageUrl,
    this.city,
    this.country,
    //this.description,
    this.oteller,
  });
}

List<Otel> antalya = [
  Otel(
    imageUrl: 'assets/images/oteller/antalya1.png',
    name: 'Ayshenia',
    rating: 1,
    price: '30 TL',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/antalya2.png',
    name: 'Nirvana Dolce Vita',
    rating: 2,
    price: '230 TL',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/antalya3.png',
    name: 'Aotel3',
    rating: 3,
    price: '125 TL',
    country: 'Türkiye',
    city: 'Antalya',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
];
List<Otel> mugla = [
  Otel(
    imageUrl: 'assets/images/oteller/mugla1.png',
    name: 'motel1',
    rating: 5,
    price: '305 TL',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/mugla2.png',
    name: 'motel2',
    rating: 4,
    price: '210 TL',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/mugla3.png',
    name: 'motel3',
    rating: 3,
    price: '125 TL',
    country: 'Türkiye',
    city: 'Muğla',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
];
List<Otel> izmir = [
  Otel(
    imageUrl: 'assets/images/oteller/izmir1.png',
    name: 'iotel1',
    rating: 3,
    price: '390 TL',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/izmir1.png',
    name: 'iotel2',
    rating: 4,
    price: '230 TL',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/izmir1.png',
    name: 'iotel3',
    rating: 3,
    price: '230 TL',
    country: 'Türkiye',
    city: 'İzmir',
    flag: false,
    aciklama: 'Mevkii:  Kemerağzı.\n'
        'Denize Mesafe: 750 mt.\n'
        'Antalya Merkezine Mesafe:  27 km.\n'
        'Antalya Otogara Mesafe:  30 km.\n'
        'Antalya Havaalanına Mesafe:  11 km.\n'
        'Belek Merkezine Mesafe:  12 km.\n',
  ),
];

List<Sehir_olustur> sehirler = [
  Sehir_olustur(
    //imageUrl: 'assets/images/antalya.jfif',
    city: 'Antalya',
    country: 'Türkiye',
    // description: '',
    oteller: antalya,
  ),
  Sehir_olustur(
    //imageUrl: 'assets/images/antalya.jfif',
    city: 'Muğla',
    country: 'Türkiye',
    //description: '',
    oteller: mugla,
  ),
  Sehir_olustur(
    // imageUrl: 'assets/images/antalya.jfif',
    city: 'İzmir',
    country: 'Türkiye',
    //description: '',
    oteller: izmir,
  ),
];
