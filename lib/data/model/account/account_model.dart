import 'package:wtoolboxweb/clean_architecture/entity/wtw_entity.dart';
import 'package:wtoolboxweb/clean_architecture/entity/wtw_object_mapper.dart';
import '../../../domain/entity/account/account.dart';

class AccountMapper extends WTWObjectMapper<Account, AccountModel> {

  @override
  Account toEntity(AccountModel model) {
    return Account(
      key:         model.key,
      date:        model.date,
      language:    model.language,
      theme:       model.theme,
      isLoggedIn:  model.isLoggedIn,
      token:       model.token,
      firstname:   model.firstname,
      lastname:    model.lastname,
      email:       model.email,
      image:       model.image,
      dateOfBirth: model.dateOfBirth,
      city:        model.city,
      country:     model.country,
    );
  }

  @override
  AccountModel toModel(Account entity) {
    return AccountModel(
      key:         entity.key,
      date:        entity.date,
      language:    entity.language,
      theme:       entity.theme,
      isLoggedIn:  entity.isLoggedIn,
      token:       entity.token,
      firstname:   entity.firstname,
      lastname:    entity.lastname,
      email:       entity.email,
      image:       entity.image,
      dateOfBirth: entity.dateOfBirth,
      city:        entity.city,
      country:     entity.country,
    );
  }

}

class AccountModel extends WTWEntity<AccountModel> {

  AccountModel({
    super.key,
    super.date,
    this.language,
    this.theme,
    this.isLoggedIn,
    this.token,
    this.firstname,
    this.lastname,
    this.email,
    this.image,
    this.dateOfBirth,
    this.city,
    this.country,
  });
  
  String? language; // selected language label (me_MNE)
  void setLanguage(String? v) { language = v; }

  String? theme; // selected theme name (Light / Dark)
  void setTheme(String? v) { theme = v; }

  bool? isLoggedIn; // check if account is logged in
  void setIsLoggedIn(bool? v) { isLoggedIn = v; }

  Map<String, dynamic>? token = <String, dynamic>{}; // jwt token
  void setToken(Map<String, dynamic>? v) { token = v; }

  String? firstname;
  void setFirstname(String? v) { firstname = v; }

  String? lastname;
  void setLastname(String? v) { lastname = v; }

  String? email;
  void setEmail(String? v) { email = v; }

  String? image;
  void setImage(String? v) { image = v; }

  String? dateOfBirth;
  void setDateOfBirth(String? v) { dateOfBirth = v; }

  String? city;
  void setCity(String? v) { city = v; }

  String? country;
  void setCountry(String? v) { country = v; }

  @override
  Map<String, dynamic>? toJson() {
    return {
      'key':         key,
      'date':        date,
      'language':    language,
      'theme':       theme,
      'isLoggedIn':  isLoggedIn,
      'token':       token,
      'firstname':   firstname,
      'lastname':    lastname,
      'email':       email,
      'image':       image,
      'dateOfBirth': dateOfBirth,
      'city':        city,
      'country':     country,
    };
  }

  @override
  AccountModel? fromJson(Map? json) {
    return AccountModel(
      key:         json!['key'],
      date:        json['date'],
      language:    json['language'],
      theme:       json['theme'],
      isLoggedIn:  json['isLoggedIn'],
      token:       json['token'],
      firstname:   json['firstname'],
      lastname:    json['lastname'],
      email:       json['email'],
      image:       json['image'],
      dateOfBirth: json['dateOfBirth'],
      city:        json['city'],
      country:     json['country'],
    );
  }

  @override
  AccountModel? empty() {
    return AccountModel(
      key:         0,
      date:        '',
      language:    '',
      theme:       '',
      isLoggedIn:  false,
      token:       {},
      firstname:   '',
      lastname:    '',
      email:       '',
      image:       '',
      dateOfBirth: '',
      city:        '',
      country:     '',
    );
  }
 
}