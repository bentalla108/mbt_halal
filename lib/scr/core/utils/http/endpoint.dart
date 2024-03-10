class SVKey {
  // static const mainUrl = "http://192.168.1.87:3001";
  static const mainUrl = "http://localhost:3001";
  static const baseUrl = '$mainUrl/api/';
  static const nodeUrl = mainUrl;

  static const svLogin = '${baseUrl}user/login';
  static const svSignUp = '${baseUrl}user/signup';
  static const svHome = '${baseUrl}home';
  static const svProductDetail = '${baseUrl}product_detail';
  static const svAddRemoveFavorite = '${baseUrl}add_remove_favorite';
  static const svFavorite = '${baseUrl}favorite_list';
  static const svExploreList = '${baseUrl}explore_category_list';
  static const svExploreItemList = '${baseUrl}explore_category_items_list';

  static const svAddToCart = '${baseUrl}add_to_cart';
  static const svUpdateCart = '${baseUrl}update_cart';
  static const svRemoveCart = '${baseUrl}remove_cart';
  static const svCartList = '${baseUrl}cart_list';
  static const svOrderPlace = '${baseUrl}order_place';

  static const svAddDeliveryAddress = '${baseUrl}add_delivery_address';
  static const svUpdateDeliveryAddress = '${baseUrl}update_delivery_address';
  static const svDeleteDeliveryAddress = '${baseUrl}delete_delivery_address';
  static const svDeliveryAddress = '${baseUrl}delivery_address';

  static const svAddPaymentMethod = '${baseUrl}add_payment_method';
  static const svRemovePaymentMethod = '${baseUrl}remove_payment_method';
  static const svPaymentMethodList = '${baseUrl}payment_method';

  static const svMarkDefaultDeliveryAddress =
      '${baseUrl}mark_default_delivery_address';

  static const svPromoCodeList = '${baseUrl}promo_code_list';
  static const svMyOrders = '${baseUrl}my_order';
  static const svMyOrdersDetail = '${baseUrl}my_order_detail';

  static const svNotificationList = '${baseUrl}notification_list';
  static const svNotificationReadAll = '${baseUrl}notification_read_all';

  static const svUpdateProfile = '${baseUrl}update_profile';
  static const svChangePassword = '${baseUrl}change_password';
  static const svForgotPasswordRequest = '${baseUrl}forgot_password_request';
  static const svForgotPasswordVerify = '${baseUrl}forgot_password_verify';
  static const svForgotPasswordSetPassword =
      '${baseUrl}forgot_password_set_password';
}

class KKey {
  static const payload = "payload";
  static const status = "status";
  static const message = "message";
  static const authToken = "auth_token";
  static const name = "name";
  static const email = "email";
  static const mobile = "mobile";
  static const address = "address";
  static const userId = "user_id";
  static const resetCode = "reset_code";
  // static const  = "";
}

class MSG {
  static const enterEmail = "Please enter your valid email address.";
  static const enterName = "Please enter your name.";
  static const enterCode = "Please enter valid reset code.";

  static const enterMobile = "Please enter your valid mobile number.";
  static const enterAddress = "Please enter your address.";
  static const enterPassword =
      "Please enter password minimum 6 characters at least.";
  static const enterPasswordNotMatch = "Please enter password not match.";
  static const success = "success";
  static const fail = "fail";
}
