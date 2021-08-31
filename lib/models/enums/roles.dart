enum Roles { ADMIN, USER }

class RolesClass{
  static Roles getValue(String value){
    switch (value) {
      case 'ADMIN':
        return Roles.ADMIN;
      case 'USER':
        return Roles.USER;
      default:
        return null;
    }
  }

  static String getString(Roles value){
    switch (value) {
      case Roles.ADMIN:
        return 'ADMIN';
      case Roles.USER:
        return 'USER';
      default:
        return null;
    }
  }
}
