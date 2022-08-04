class Api {

  // static const baseUrl = "https://food.thesnaptask.com/api";
  // static const baseUrl = "http://test.thelifeshaper.com/api";

   //static const LIVE URL  = "https://audiohopperapp.wpengine.com";
     //static const baseUrl = "https://lookwhatwemadeyou.com/audiohopper/wp-json";
  static const baseUrl = "https://audiohopperapp.wpengine.com/wp-json";

  static const login = "/wp/v2/users/?search=";
  static const loginSocial = "/login/social";
  static const register = "/wp/v2/users";
  static const userDetails = "/wp/v2/users";
  static const registerToken = "/api/v1/token";
  static const homePagePost = "/wp/v2/posts/";
  static const filterCategory = "/wp/v2/categories";
  static const filterAuthor = "/wp/v2/post-filter-author";
  static const filterPublication = "/wp/v2/post-filter-publication";
  static const searchPost = "/wp/v2/posts/";
  static const searchNewPost="/wp/v1/search";
  static const forgotPasswordCheckEmail = "/bdpwr/v1/reset-password";
  static const forgotPasswordValidateCode = "/bdpwr/v1/validate-code";
  static const forgotPasswordReset = "/bdpwr/v1/set-password";
  static const uploadUserAvatar = "/wp/v2/update-users-profile-picture";
  static const getUserAvatar = "/wp/v2/get-profile-picture";
  static const notifications = "/wp/v2/users-notificatoon-list";
  static const addUserSubcription= "/wp/v2/user_subscription";
  static const getUserSubcription= "/wp/v2/get_user_subscription";
  static const addFreeTrialCount= "/wp/v2/get_user_subscription";
  static const getFreeTrialCount= "/wp/v2/users-posts-count";
  //static const API_KEY="FclumGWjLGxgIXikaeFRuwhOkdiqpPZF";
  static const ANDROID_API_KEY="goog_EmnjRxMzNENImMifNHjslxHEkNS";
  static const IOS_API_KEY="appl_SDwMwXWbdLLKZNjSiIsAfQabMQg";


  static const otp = "/otp";
  static const logout = "/logout";

  static const changePassword = "/wp/v2/users";
  static const updateProfile = "/wp/v2/users";


  static const recentlyViewPost = "/wp/v2/users-viewed-posts";
  static const addToRecentlyViewed = "/wp/v2/update-users-post-meta";
  static const removeFromRecentlyViewed = "/wp/v2/delete-users-post-meta-recenlty-viewed";

  static const myHopperPost = "/wp/v2/users-my-hopper";
  static const addToMyHopper = "/wp/v2/update-users-post-meta-add-my-hopper";
  static const removeFromHopper = "/wp/v2/delete-users-post-meta-my-hopper";

  static const downloadedPost = "/wp/v2/users-my-download";
  static const addToDownload = "/wp/v2/update-users-post-meta-add-my-download";
  static const removeFromDownload = "/wp/v2/delete-users-post-meta-my-download";


  static const abantuFavorites = "/abantu-favorites";
  static const bookDetails = "/books";
  static const discoverCategories = "/genres";
  static const discoverPage= "/discover-art";
  static const library = "/purchased-books";
  static const wishlist = "/wishlist";
  static const addToWishlist = "/add-to-wishlist";
  static const removeWishlist = "/remove-from-wishlist";

  static const categoryProduct = "/products";
  static const productByCategory = "/products_by_category";
  static const deliveryAddress = "/delivery/addresses";

  static const faq = "/faq";

  static const defaultDeliveryAddress = "/default/delivery/address";

  static const paymentOptions = "/payment/options";

  static const initiateCheckout = "/checkout/initiate";
  static const finalizecheckout = "/checkout/finalize";

  static const orders = "/orders";
  static const subscriptionUpdate = "/subscriptions";
  static const doctorFeesUpdate = "/update-appointment";
  static const orderUpdate = '/order/status/update';

  static const coupons = "/coupons";



  // Updates .....

  static const phoneValidation = "/phone/verify";
  static const otpLogin = "/phone/login";


  static const fcmServer = 'https://fcm.googleapis.com/fcm/send';

  static const wallet = "/wallet";


  // Docotors Apis........

     static const doctors = "/doctors";
     static const doctorCategoryWise = "/doctor";
     static const doctorSpecilityWise = "/doctor-speciality";
     static const doctorsBanner = "/doctor-banners";

     static const doctorsCategories = "/doctor-categories";
     static const doctorSpecialities = "/doctor-specialities";
     static const bookAppointment = "/book-appointment";
     static const doctorAppointmentDateWise = "/doctor-by-date";
     static const userAppointmentList = "/user-appointments";

     static const subscriptionDetails = "/subscriptions";
     static const checkoutSubscription = "/subscriptions";
     static const subscriptionBenefits = "/subscription-benefits";
     static const checksubscription = "/check-subscription";



}
