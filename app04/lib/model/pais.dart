//
// DATA MODEL
//
class Country{
  int id;
  String abbreviation;
  String name;
  String area;
  String capital;
  String historic;

  Country(
    this.id,
    this.abbreviation,
    this.name,
    this.area,
    this.capital,
    this.historic,
  );

  factory Country.fromJson(Map<String,dynamic> json){
    return Country(
      json['id']['M49'],
      json['id']['ISO-3166-1-ALPHA-2'],
      json['nome']['abreviado'],
      json['area']['total'],
      json['governo']['capital']['nome'],
      json['historico'],
    );
  }
}