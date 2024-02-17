// class AutoGenerate {
//   AutoGenerate({
//     required this.code,
//     required this.photo,
//     required this.breadcrumb,
//     required this.brand,
//     required this.category,
//     required this.option,
//     required this.sku,
//     required this.stock,
//     required this.place,
//     required this.char,
//      this.text,
//     required this.quantity,
//      this.art,
//     required this.userDiscount,
//     required this.price,
//     required this.r,
//     required this.e,
//   });
//   late final int code;
//   late final Photo photo;
//   late final Breadcrumb breadcrumb;
//   late final Brand brand;
//   late final Category category;
//   late final List<Option> option;
//   late final List<dynamic> sku;
//   late final Stock stock;
//   late final Place place;
//   late final Char char;
//   late final Null text;
//   late final int quantity;
//   late final Null art;
//   late final int userDiscount;
//   late final Price price;
//   late final String r;
//   late final String e;
  
//   AutoGenerate.fromJson(Map<String, dynamic> json){
//     code = json['code'];
//     photo = Photo.fromJson(json['photo']);
//     breadcrumb = Breadcrumb.fromJson(json['breadcrumb']);
//     brand = Brand.fromJson(json['brand']);
//     category = Category.fromJson(json['category']);
//     option = List.from(json['option']).map((e)=>Option.fromJson(e)).toList();
//     sku = List.castFrom<dynamic, dynamic>(json['sku']);
//     stock = Stock.fromJson(json['stock']);
//     place = Place.fromJson(json['place']);
//     char = Char.fromJson(json['char']);
//     text = null;
//     quantity = json['quantity'];
//     art = null;
//     userDiscount = json['user_discount'];
//     price = Price.fromJson(json['price']);
//     r = json['r'];
//     e = json['e'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['code'] = code;
//     _data['photo'] = photo.toJson();
//     _data['breadcrumb'] = breadcrumb.toJson();
//     _data['brand'] = brand.toJson();
//     _data['category'] = category.toJson();
//     _data['option'] = option.map((e)=>e.toJson()).toList();
//     _data['sku'] = sku;
//     _data['stock'] = stock.toJson();
//     _data['place'] = place.toJson();
//     _data['char'] = char.toJson();
//     _data['text'] = text;
//     _data['quantity'] = quantity;
//     _data['art'] = art;
//     _data['user_discount'] = userDiscount;
//     _data['price'] = price.toJson();
//     _data['r'] = r;
//     _data['e'] = e;
//     return _data;
//   }
// }

// class Photo {
//   Photo({
//     required this.mini,
//     required this.full,
//     required this.orig,
//   });
//   late final List<String> mini;
//   late final List<String> full;
//   late final List<String> orig;
  
//   Photo.fromJson(Map<String, dynamic> json){
//     mini = List.castFrom<dynamic, String>(json['mini']);
//     full = List.castFrom<dynamic, String>(json['full']);
//     orig = List.castFrom<dynamic, String>(json['orig']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['mini'] = mini;
//     _data['full'] = full;
//     _data['orig'] = orig;
//     return _data;
//   }
// }

// class Breadcrumb {
//   Breadcrumb({
//     required this.1,
//   });
//   late final 1 1;
  
//   Breadcrumb.fromJson(Map<String, dynamic> json){
//     1 = 1.fromJson(json['1']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['1'] = 1.toJson();
//     return _data;
//   }
// }

// class 1 {
//   1({
//     required this.Женщинам,
//     required this.Сумки,
//     required this.Косметички,
//     required this.Guess,
//   });
//   late final String Женщинам;
//   late final String Сумки;
//   late final String Косметички;
//   late final String Guess;
  
//   1.fromJson(Map<String, dynamic> json){
//     Женщинам = json['Женщинам'];
//     Сумки = json['Сумки'];
//     Косметички = json['Косметички'];
//     Guess = json['Guess'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['Женщинам'] = Женщинам;
//     _data['Сумки'] = Сумки;
//     _data['Косметички'] = Косметички;
//     _data['Guess'] = Guess;
//     return _data;
//   }
// }

// class Brand {
//   Brand({
//     required this.id,
//     required this.n,
//     required this.u,
//   });
//   late final String id;
//   late final String n;
//   late final String u;
  
//   Brand.fromJson(Map<String, dynamic> json){
//     id = json['id'];
//     n = json['n'];
//     u = json['u'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['n'] = n;
//     _data['u'] = u;
//     return _data;
//   }
// }

// class Category {
//   Category({
//     required this.id,
//     required this.n,
//      this.chN,
//   });
//   late final String id;
//   late final String n;
//   late final Null chN;
  
//   Category.fromJson(Map<String, dynamic> json){
//     id = json['id'];
//     n = json['n'];
//     chN = null;
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['id'] = id;
//     _data['n'] = n;
//     _data['ch_n'] = chN;
//     return _data;
//   }
// }

// class Option {
//   Option({
//     required this.c,
//     required this.n,
//     required this.f,
//     required this.b,
//     required this.ne,
//     required this.pr,
//     required this.u,
//     required this.g,
//     required this.ct,
//   });
//   late final String c;
//   late final String n;
//   late final String f;
//   late final String b;
//   late final String ne;
//   late final String pr;
//   late final String u;
//   late final String g;
//   late final String ct;
  
//   Option.fromJson(Map<String, dynamic> json){
//     c = json['c'];
//     n = json['n'];
//     f = json['f'];
//     b = json['b'];
//     ne = json['ne'];
//     pr = json['pr'];
//     u = json['u'];
//     g = json['g'];
//     ct = json['ct'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['c'] = c;
//     _data['n'] = n;
//     _data['f'] = f;
//     _data['b'] = b;
//     _data['ne'] = ne;
//     _data['pr'] = pr;
//     _data['u'] = u;
//     _data['g'] = g;
//     _data['ct'] = ct;
//     return _data;
//   }
// }

// class Stock {
//   Stock({
//     required this.Москва, ТЦ Мега Химки, Shoes,
//     required this.Москва, Центральный склад,
//   });
//   late final String Москва, ТЦ Мега Химки, Shoes;
//   late final String Москва, Центральный склад;
  
//   Stock.fromJson(Map<String, dynamic> json){
//     Москва, ТЦ Мега Химки, Shoes = json['Москва, ТЦ Мега Химки, Shoes'];
//     Москва, Центральный склад = json['Москва, Центральный склад'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['Москва, ТЦ Мега Химки, Shoes'] = Москва, ТЦ Мега Химки, Shoes;
//     _data['Москва, Центральный склад'] = Москва, Центральный склад;
//     return _data;
//   }
// }

// class Place {
//   Place({
//     required this.b,
//     required this.s,
//   });
//   late final int b;
//   late final int s;
  
//   Place.fromJson(Map<String, dynamic> json){
//     b = json['b'];
//     s = json['s'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['b'] = b;
//     _data['s'] = s;
//     return _data;
//   }
// }

// class Char {
//   Char({
//     required this.1,
//     required this.2,
//     required this.3,
//     required this.5,
//     required this.7,
//     required this.27,
//     required this.28,
//     required this.29,
//     required this.code,
//     required this.art,
//   });
//   late final 1 1;
//   late final 2 2;
//   late final 3 3;
//   late final 5 5;
//   late final 7 7;
//   late final 27 27;
//   late final 28 28;
//   late final 29 29;
//   late final Code code;
//   late final Art art;
  
//   Char.fromJson(Map<String, dynamic> json){
//     1 = 1.fromJson(json['1']);
//     2 = 2.fromJson(json['2']);
//     3 = 3.fromJson(json['3']);
//     5 = 5.fromJson(json['5']);
//     7 = 7.fromJson(json['7']);
//     27 = 27.fromJson(json['27']);
//     28 = 28.fromJson(json['28']);
//     29 = 29.fromJson(json['29']);
//     code = Code.fromJson(json['code']);
//     art = Art.fromJson(json['art']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['1'] = 1.toJson();
//     _data['2'] = 2.toJson();
//     _data['3'] = 3.toJson();
//     _data['5'] = 5.toJson();
//     _data['7'] = 7.toJson();
//     _data['27'] = 27.toJson();
//     _data['28'] = 28.toJson();
//     _data['29'] = 29.toJson();
//     _data['code'] = code.toJson();
//     _data['art'] = art.toJson();
//     return _data;
//   }
// }

// class 2 {
//   2({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   2.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 3 {
//   3({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   3.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 5 {
//   5({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   5.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 7 {
//   7({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   7.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 27 {
//   27({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   27.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 28 {
//   28({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   28.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class 29 {
//   29({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   29.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class Code {
//   Code({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   Code.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class Art {
//   Art({
//     required this.n,
//     required this.v,
//   });
//   late final String n;
//   late final String v;
  
//   Art.fromJson(Map<String, dynamic> json){
//     n = json['n'];
//     v = json['v'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['n'] = n;
//     _data['v'] = v;
//     return _data;
//   }
// }

// class Price {
//   Price({
//     required this.p,
//     required this.pb,
//     required this.pc,
//     required this.pbc,
//     required this.bonus,
//     required this.bonusYear,
//     required this.discountVal,
//   });
//   late final String p;
//   late final String pb;
//   late final int pc;
//   late final int pbc;
//   late final int bonus;
//   late final int bonusYear;
//   late final int discountVal;
  
//   Price.fromJson(Map<String, dynamic> json){
//     p = json['p'];
//     pb = json['pb'];
//     pc = json['pc'];
//     pbc = json['pbc'];
//     bonus = json['bonus'];
//     bonusYear = json['bonus_year'];
//     discountVal = json['discount_val'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['p'] = p;
//     _data['pb'] = pb;
//     _data['pc'] = pc;
//     _data['pbc'] = pbc;
//     _data['bonus'] = bonus;
//     _data['bonus_year'] = bonusYear;
//     _data['discount_val'] = discountVal;
//     return _data;
//   }
// }