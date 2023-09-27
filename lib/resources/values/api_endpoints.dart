class Apis {
  static int categoryIndex = 0;
  static String categoryId = '';
  static String brandId = '';
  static String categoryName = '';
  static String brandName = '';
  static String assetName = '';
  static String groupId = '';
  static String itemConditionId = '';
  static String feeStructureId = '';
  static String appraisalCode = '';
  static String assetImgUrl = '';
  static String brandImgUrl = '';
  static String kCMSBaseUrl = 'https://customeradmin.northladder.com';
  static const kBaseUrl = 'https://dev-apiv5.asancash.com';
  static const kLogin = '/is/identity/customer/login';
  static const kLogout = '/is/identity/logout';
  static const kFacebookLogin = '/is/user/facebook/login';
  static const kGoogleLogin = '/is/user/google/login';
  static const kChangePassword = '/is/identity/change-password';
  static const kForgotPassword = '/is/identity/forgot-password';
  static const kVerifySocialLogin = '/is/user/social-login/verify-email';
  static const kVerifyOtp = '/is/identity/reset-password';
  static const signUp = '/is/identity/user/signUp';
  static const kGetAssetAttributes = '/as/assets/active-asset-attributes';
  static const kGetItemCondition = '/as/admin/itemCondition/getItemCondition/';
  static const kActiveList = '/as/category/active-list';
  static const kSelectModel = '/as/assets/active-groups';
  static const kPathTokenRefresh = '/is/identity/token';
  static const kPickupAddress = '/is/user/pickup-address';
  static const kSearch = '/as/assets/search';
  static const storeDetail = '/as/bids/asset-storage-members';
  static const kPromocode = '/cs/voucherify/coupon';
  static const kHomePage = '/cas/translation/cms-data';
  static const kCreateAppraisal = '/cs/appraisal/reverse-auction';
  static const kLanguageTranslation = '/mobile-translations?_limit=2000';
  static const kHomePendingDeals =
      '/cs/appraisal?page=1&count=3&search=&appraisalStatus=Pending&categoryId=&isSell=';
  static const kCantFindPage = '/as/admin/guest/cantfind/add';
  static const kCantFindFormData = '/form-builders?_type=CANTFIND';
  static const kDealDetails = '/cs/appraisal';
  static const kDownloadInvoice = '/as/invoice-list/invoice-url-details';
  static const kExtendDeals = '/cs/member/getExtentionDate';
  static const kExtendDate = '/cs/appraisal/extend';
  static const kReDeal = '/cs/appraisal/redeal';
  static const kImageBaseUrl = 'https://d3mhdddxe7cfv4.cloudfront.net';
  static const bestPriceGuranteeApi = '/cs/customer/Request/ContactUs';
  static const kFeeStructure = '/as/admin/feeStructure/getFeeStructure';
  static const kFreeQuote = '/cs/appraisal/free-quote';
  static const kRemoveSocial = '/is/user/remove-social-login';
  static const kHomeDueDeals =
      '/cs/appraisal?page=1&count=3&search=&appraisalStatus=Active&categoryId=&isSell=';
  static const kStaticData = '/cs/appraisal/review-statics';
  static const kMyDeals =
      '/cs/appraisal?page={pageCount}&count=20&search=&appraisalStatus={appraisalStatus}&categoryId=&isSell=';
  static const kVerifyPhone = '/is/user/verify-phone';
  static const kVerifyEmail = '/is/user/verify-email';
  static const kVerifyPhoneOtp = '/is/user/verify-phone-otp';
  static const kVerifyEmailOtp = '/is/user/verify-email-otp';
  static const kGetCityListApi = '/as/admin/city/getAllCitys';
  static const kNewOrderRefrence =
      '/cs/master-config-balance/new-order-reference';
  static const kGetCheckoutPageHostUrl =
      '/cs/checkoutPayment/get-checkout-host-page-url';
  static const kSaveIntialTransactionData =
      '/cs/checkoutPayment/save-initial-transaction-data';
  static const kUpdateProfile = 'is/identity/customer/userinfo';

  static const kUpdateProfileImage = '/is/user/upload-profile-image';
}
