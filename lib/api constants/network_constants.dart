

class NetworkConstants {
  // local Urls
    static const String baseUrl = 'https://0cv89p3x-5000.inc1.devtunnels.ms/';
  static const String imageURL = 'https://0cv89p3x-5000.inc1.devtunnels.ms/';

  //Production Urls

  //Endpoints

  //   Authentications
    static const String signIn = 'api/users/signInCollie';
    static const String otpVerification = 'api/users/isVerifiedCollie';
    static const String sendOtp = 'api/users/signIn';
    static const String getCoolieProfile = 'api/users/collieProfile';
    static const String pendingApproval = 'api/admin/pendingApprovals';
    static const String approveCollie = 'api/admin/approveCollie';

  // Timeouts
  static const int sendTimeout = 30000; // 30 seconds
}