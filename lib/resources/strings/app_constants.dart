class AppStringKeys {
  static const String appName = 'app_name';
}

class UploadFileType {
  UploadFileType._();

  static const String profileImageType = 'PROFILE_PIC';
  static const String profileImageName = 'profile_image';
}

class TransactionType {
  TransactionType._();

  static const String buyType = 'BUY';
  static const String sellType = 'SELL';
  static const String pending = 'PENDING';
  static const String completed = 'COMPLETED';
  static const String failed = 'FAILED';
  static const String cancelled = 'CANCELLED';
  static const String expired = 'EXPIRED';
  static const String refunded = 'REFUNDED';
}

class DataKeys {
  DataKeys._();

  static const String userId = 'userId';
  static const String authToken = 'authToken'; // idToken
  static const String bloc = 'bloc';
  static const String email = 'userEmail';
  static const String currentPassword = 'currentPassword';
  static const String newPassword = 'newPassword';
  static const String recoverySeed = 'recoverySeed';
  static const String termsAccepted = 'termsAccepted';
  static const String idToken = 'idToken';
  static const String refreshToken = 'refreshToken';
  static const String isDataStacked = 'isDataStacked';
  static const String route = 'route';
  static const String baseUrl = 'baseUrl';
  static const String transactionId = 'transactionId';
  static const String isTransactionSuccess = 'isTransactionSuccess';
  static const String transactionModel = 'transactionModel';
  static const String apiKey = 'apiKey';
  static const String title = 'title';
  static const String isBackEnable = 'isBackEnable';

  /// Transak Keys and string
  static const String transakPusherPublicKey = '1d9ffac87de599c61283';
  static const String transakCluster = 'ap2';
}

class TransakEventStatusCode {
  TransakEventStatusCode._();

  static const String orderCompleted = 'ORDER_COMPLETED';
  static const String orderProcessing = 'ORDER_PROCESSING';
  static const String orderFailed = 'ORDER_FAILED';
  static const String orderRefunded = 'ORDER_REFUNDED';
}

enum TransakEventCodeEnum {
  orderCanceled,
  orderCompleted,
  orderProcessing,
  orderFailed,
  emptyBaseUrl,
  internetDisconnected,
  error,
  exception,
}

class RegConstants {
  RegConstants._();

  static const String charForSeed =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  static const String emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const String upperCaseRegex = r'[A-Z]';
  static const String lowerCaseRegex = r'[a-z]';
  static const String nameRegex = r'^[A-Za-z ]+$';
  static const String numberRegex = r'[0-9]';
  static const String doubleNumberRegex =
      r'([+-]?(?=\.\d|\d)(?:\d+)?(?:\.?\d*))(?:[eE]([+-]?\d+))?';
  static const String spaceRegex = r'\s';
  static const String specialCharRegex = r'[!@#$%^&*(),.?":{}|<>]';
  static const String mobileRegex = r'(^[0-9]{10}$)';
  static const String otpRegex = r'(^[0-9]{4}$)';
  static const String urlRemoveRegex = r'(?:access_token)\=([\S\s]*)';
  static const String phraseRemoveRegex = r'(?:access_token=)';
  static const String tokenCleanRegex = r'(?:&access_token)\=([\S\s]*)';
}

class AppConstants {
  AppConstants._();

  static const String appName = 'appName';
  static const String pendingNote = 'pendingNote';
  static const String sessionExpired = 'sessionExpired';
  static const String welcomeTo = 'welcomeTo';
  static const String areYouSure = 'areYouSure';
  static const String dataStakingOffMsg = 'dataStakingOffMsg';
  static const String noDataStakedMsg = 'noDataStakedMsg';
  static const String hello = 'hello';
  static const String buyWithTransak = 'buyWithTransak';
  static const String acceptTermAndPrivacyMsg = 'acceptTermAndPrivacyMsg';
  static const String termAndPrivacyOpenMsg = 'termAndPrivacyOpenMsg';
  static const String hipaaOpenMsg = 'hipaaOpenMsg';
  static const String comingSoon = 'comingSoon';
  static const String retry = 'retry';
  static const String minImageSizeMsg = 'minImageSizeMsg';
  static const String maxImageSizeMsg = 'maxImageSizeMsg';
  static const String mb = 'mb';
  static const String comma = 'comma';
  static const String aurkoinBalance = 'aurkoinBalance';
  static const String youAreEnrolled = 'youAreEnrolled';
  static const String welcomeToAurkei = 'welcomeToAurkei';
  static const String dontHaveAccount = 'dontHaveAccount';
  static const String terms = 'terms';
  static const String termsOfUse = 'termsOfUse';
  static const String transactionFailed = 'transactionFailed';
  static const String transactionCanceled = 'transactionCanceled';
  static const String and = 'and';
  static const String ok = 'ok';
  static const String home = 'home';
  static const String wallet = 'wallet';
  static const String data = 'data';
  static const String market = 'market';
  static const String status = 'status';
  static const String closeAppMessage = 'closeAppMessage';
  static const String enterAmountHint = 'enterAmountHint';
  static const String aurkoinsUnit = 'aurkoinsUnit';
  static const String viewTransactionHistory = 'viewTransactionHistory';
  static const String viewTransactionDetails = 'viewTransactionDetails';
  static const String processing = 'processing';
  static const String processingMessage = 'processingMessage';
  static const String transactionFailedMsg = 'transactionFailedMsg';
  static const String cancelTransaction = 'cancelTransaction';
  static const String cancelTransactionMsg = 'cancelTransactionMsg';
  static const String noInternetConnection = 'noInternetConnection';
  static const String aurkeiData = 'aurkeiData';
  static const String stackDataEarn = 'stackDataEarn';
  static const String unStackDataMsg = 'unStackDataMsg';
  static const String hipaa = 'hipaa';
  static const String startEarning = 'startEarning';
  static const String backToWallet = 'backToWallet';
  static const String enrolledDataStack = 'enrolledDataStack';
  static const String stackDataMsg = 'stackDataMsg';
  static const String enterValidAmountRangeMsg = 'enterValidAmountRangeMsg';
  static const String completeProfileDetails = 'completeProfileDetails';
  static const String goToProfile = 'goToProfile';
  static const String completeProfileDetailsText = 'completeProfileDetailsText';

  static const String buyAurkoins = 'buyAurkoins';
  static const String sellAurkoins = 'sellAurkoins';
  static const String buyText = 'buyText';
  static const String sellText = 'sellText';
  static const String invalidNameMsg = 'invalidNameMsg';
  static const String emptyAmountMessage = 'emptyAmountMessage';
  static const String invalidAmountMessage = 'invalidAmountMessage';
  static const String buyAndSellAurkoins = 'buyAndSellAurkoins';
  static const String buyAndSellAurkoinsMessage = 'buyAndSellAurkoinsMessage';
  static const String youAreEnrolledForDataStaking =
      'youAreEnrolledForDataStaking';
  static const String welcomeToDataStakingMessage =
      'welcomeToDataStakingMessage';
  static const String stakeYourData = 'stakeYourData';
  static const String stateYourDataMessage = 'stateYourDataMessage';

  static const String privacyPolicy = 'privacyPolicy';
  static const String welcomAurfamily = 'welcomAurfamily';
  static const String welcomeScreenMsg = 'welcomeScreenMsg';
  static const String getStarted = 'getStarted';
  static const String passwordResetDone = 'passwordResetDone';
  static const String accountLogoutTitle = 'accountLogoutTitle';
  static const String logoutConfirmationMessage = 'logoutConfirmationMessage';
  static const String backLogin = 'backLogin';
  static const String congrats = 'congrats';
  static const String strongPassword = 'strongPassword';
  static const String weakPassword = 'weakPassword';
  static const String transactionSuccessButtonText =
      'transactionSuccessButtonText';
  static const String done = 'done';
  static const String enterVerificationCodeHint = 'enterVerificationCodeHint';
  static const String profile = 'profile';
  static const String noNotificationMsg = 'noNotificationMsg';
  static const String notifications = 'notifications';
  static const String close = 'close';
  static const String buy = 'buy';
  static const String sell = 'sell';
  static const String transactionHistory = 'transactionHistory';
  static const String noTransactionMsg = 'noTransactionMsg';
  static const String transactionDetails = 'transactionDetails';
  static const String aurkoinBuyDetail = 'aurkoinBuyDetail';
  static const String aurkoinSellDetail = 'aurkoinSellDetail';
  static const String date = 'date';
  static const String time = 'time';
  static const String transactionFee = 'transactionFee';
  static const String transactionfee = 'transactionfee';
  static const String gasMoney = 'gasMoney';
  static const String platformFee = 'platformFee';
  static const String rateOfConversion = 'rateOfConversion';
  static const String aurkoinAcronym = 'aurkoinAcronym';

  static const String myProfile = 'myProfile';
  static const String profileSaveSuccessMessage = 'profileSaveSuccessMessage';
  static const String editProfilePicture = 'editProfilePicture';
  static const String searchForAddress = 'searchForAddress';

  static const String save = 'save';
  static const String signUp = 'signUp';
  static const String fullName = 'fullName';
  static final String login = 'login';
  static final String google = 'google';
  static final String facebook = 'facebook';
  static final String microsoft = 'microsoft';
  static final String email = 'email';
  static final String next = 'next';
  static final String skipForNow = 'skipForNow';
  static final String forgotMyPassword = 'forgotMyPassword';
  static final String resetMyPassword = 'resetMyPassword';
  static final String address = 'address';
  static final String submit = 'submit';
  static final String password = 'password';
  static const String enterNewPassword = 'enterNewPassword';
  static const String enterPassword = 'enterPassword';
  static const String changePassword = 'changePassword';
  static const String enterCurrentPassword = 'enterCurrentPassword';
  static final String mobileNumber = 'mobileNumber';
  static final String orLoginUsing = 'orLoginUsing';
  static final String forgotPassword = 'forgotPassword';
  static final String recoverAccount = 'recoverAccount';
  static final String alreadyHaveAccount = 'alreadyHaveAccount';
  static final String setUpProfile = 'setUpProfile';
  static final String backUpYourAccount = 'backUpYourAccount';
  static final String recoverySeed = 'recoverySeed';
  static final String yes = 'yes';
  static final String no = 'no';
  static final String minAgo = 'minAgo';
  static final String hourAgo = 'hourAgo';
  static final String copyCode = 'copyCode';
  static final String codeCopied = 'codeCopied';
  static final String verification = 'verification';
  static final String enterVerificationCode = 'enterVerificationCode';
  static final String verificationSentMsg = 'verificationSentMsg';
  static final String resendVerificationCode = 'resendVerificationCode';
  static final String locationSuccess = 'locationSuccess';
  static final String locationPermissionDenied = 'locationPermissionDenied';
  static final String locationPermissionDeniedForeverMessage =
      'locationPermissionDeniedForeverMessage';
  static final String geoLocationDisabled = 'geoLocationDisabled';
  static final String noInternetPermission = 'noInternetPermission';
  static final String locationCoordinatesNotFetched =
      'locationCoordinatesNotFetched';
  static final String locationEmpty = 'locationEmpty';
  static final String locationPermissionTitle = 'locationPermissionTitle';
  static final String locationGPSSubTitle = 'locationGPSSubTitle';
  static final String cancelButton = 'cancelButton';
  static final String openSettings = 'openSettings';
  static final String pending = 'pending';
  static final String confirmed = 'confirmed';
  static final String failed = 'failed';
  static final String cancelled = 'cancelled';
  static final String expired = 'expired';
  static final String refunded = 'Refunded';
  static final String pasteRecoverySeed = 'pasteRecoverySeed';
  static const String invalidPassword = 'invalidPassword';
  static final String myAccount = 'myAccount';
  static final String userName = 'userName';
  static final String managePayment = 'managePayment';
  static final String notification = 'notification';
  static final String dataBackup = 'dataBackup';
  static final String dataStaking = 'dataStaking';
  static final String logout = 'logout';
  static final String gallery = 'gallery';
  static final String camera = 'camera';
  static const String provideAccessMsg = 'provideAccessMsg';
  static const String dataStakingMsg = 'dataStakingMsg';
  static const String deleteDataStakingMsg1 = 'deleteDataStakingMsg1';
  static const String deleteDataStakingMsg2 = 'deleteDataStakingMsg2';
  static const String deleteDataStakingMsg3 = 'deleteDataStakingMsg3';
  static const String deleteDataStack = 'deleteDataStack';
  static const String deleteDataStackMsg = 'deleteDataStackMsg';
  static const String delete = 'delete';

  static final String emailForResetPasswordMessage =
      'emailForResetPasswordMessage';
  static final String wrongEmailAddress = 'wrongEmailAddress';
  static final String locationPickMessage = 'locationPickMessage';
  static const String invalidEmailMessage = 'invalidEmailMessage';
  static const String invalidMobileMessage = 'invalidMobileMessage';
  static const String emptyNameMessage = 'emptyNameMessage';
  static const String minNameMessage = 'minLengthNameMessage';
  static const String maxNameMessage = 'maxLengthNameMessage';
  static const String characters = 'characters';
  static const String emptyEmailMessage = 'emptyEmailMessage';
  static const String emptyPasswordMessage = 'emptyPasswordMessage';
  static const String emptyMobileMessage = 'emptyMobileMessage';
  static const String validPasswordMessage = 'validPasswordMessage';
  static const String passwordLengthMessage = 'passwordLengthMessage';
  static const String transactionSuccessScreenMsg =
      'transactionSuccessScreenMsg';
  static const String backUpYourAccountMessage = 'backUpYourAccountMessage';
  static const String recoverySeedMessage = 'recoverySeedMessage';
  static const String registeredEmailMessage = 'registeredEmailMessage';
  static const String enterOtpMessage = 'enterOtpMessage';
  static final String newDifferentPasswordMessage =
      'newDifferentPasswordMessage';
  static const String minPasswordLengthMessage = 'minPasswordLengthMessage';
  static const String onboardingMsg1 = 'onboardingMsg1';
  static const String onboardingMsg2 = 'onboardingMsg2';
  static const String onboardingMsg3 = 'onboardingMsg3';
  static const String recoverAccountMessage = 'recoverAccountMessage';
  static const String passwordChangedMsg = 'passwordChangedMsg';
  static const String invalidCurrentPassword = 'invalidCurrentPassword';

  static const String addressLengthMessage = 'addressLengthMessage';
  static const String emptyAddressMessage = 'emptyAddressMessage';
  static const String selectPhoneCode = 'Select your phone code';
  static const String search = 'Search';
  static const String locationPermissionRequiredMessage =
      'locationPermissionRequiredMessage';

  // bloc messages
  static const String loadingMessage = 'loadingMessage';

  // error handling
  static const String somethingWentWrong = 'somethingWentWrong';
  static const String otpLimitExceed = 'otpLimitExceed';
  static const String otpExpired = 'otpExpired';
  static const String wrongOtp = 'wrongOtp';
  static const String userAlreadyExist = 'userAlreadyExist';
  static const String userNotFound = 'userNotFound';
  static const String notAllowedError = 'notAllowedError';
  static const String accountLockedFor24Hours = 'accountLockedFor24Hours';
  static const String accountBlockedByAdmin = 'accountBlockedByAdmin';
  static const String internalError = 'internalError';
  static const String incorrectPassword = 'incorrectPassword';
  static const String invalidEmail = 'invalidEmail';
  static const String loginDenied = 'loginDenied';
  static const String invalidRecoverySeed = 'invalidRecoverySeed';
  static const String enterValidSeed = 'enterValidSeed';
  static const String unableToAccessDetails = 'unableToAccessDetails';
  static const String tokenNotFound = 'tokenNotFound';
  static const String errorWhileLogin = 'errorWhileLogin';
  static const String fbLoginFailed = 'fbLoginFailed';
  static const String unSupportivePlateForm = 'unSupportivePlateForm';
  static const String duplicateRecoverySeed = 'duplicateRecoverySeed';
}
