class BasketAddress {
  final String address;
  final String zip;
  String? city;
  String? street;
  String? house;
  String? flat;
  String? cityId;

  BasketAddress({
    required this.address,
    required this.zip,
    this.cityId,
    this.street,
    this.house,
    this.flat,
    this.city,
  });
}
