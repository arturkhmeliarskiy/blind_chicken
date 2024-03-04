class BasketAddress {
  final String address;
  final String zip;
  String? cityId;

  BasketAddress({
    required this.address,
    required this.zip,
    this.cityId,
  });
}
