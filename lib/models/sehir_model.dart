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
  ),
  Otel(
    imageUrl: 'assets/images/oteller/antalya2.png',
    name: 'Aotel2',
    rating: 2,
    price: '230 TL',
    country: 'Türkiye',
    city: 'Antalya',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/antalya3.png',
    name: 'Aotel3',
    rating: 3,
    price: '125 TL',
    country: 'Türkiye',
    city: 'Antalya',
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
  ),
  Otel(
    imageUrl: 'assets/images/oteller/mugla2.png',
    name: 'motel2',
    rating: 4,
    price: '210 TL',
    country: 'Türkiye',
    city: 'Muğla',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/mugla3.png',
    name: 'motel3',
    rating: 3,
    price: '125 TL',
    country: 'Türkiye',
    city: 'Muğla',
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
  ),
  Otel(
    imageUrl: 'assets/images/oteller/izmir1.png',
    name: 'iotel2',
    rating: 4,
    price: '230 TL',
    country: 'Türkiye',
    city: 'İzmir',
  ),
  Otel(
    imageUrl: 'assets/images/oteller/izmir1.png',
    name: 'iotel3',
    rating: 3,
    price: '230 TL',
    country: 'Türkiye',
    city: 'İzmir',
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
    city: 'Mugla',
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
