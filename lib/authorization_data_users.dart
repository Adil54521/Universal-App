class UserData {
  final int authdetailsID;
  final String userFirstname;
  final String userLastname;
  final String userMiddlename;
  final String authUsername;
  final String authPasswordHASH;
  final String phoneNumber;
  final int userRole;
  final int isActive;
  final int isTestAccount;
  final int userPhotoPath; 
  final String photoChangeReason;
  final int photoChangeRequestedBy;
  final int loginStatus;
  final String publicVisibility;
  final DateTime dateTime;
  final DateTime updated;
  final DateTime lastLogin;
  //final Student student; 

  UserData(this.authdetailsID,
           this.userFirstname,
           this.userLastname,
           this.userMiddlename,
           this.authUsername,
           this.authPasswordHASH,
           this.phoneNumber,
           this.userRole,
           this.isActive,
           this.isTestAccount,
           this.userPhotoPath,
           this.photoChangeReason,
           this.photoChangeRequestedBy,
           this.loginStatus,
           this.publicVisibility,
           this.dateTime,
           this.updated,
           this.lastLogin);
}