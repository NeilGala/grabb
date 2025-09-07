import 'package:flutter/material.dart';

/// A centralized place for all text strings in the app.
/// Helps maintain consistency and makes localization easier in the future.
class TTexts {
  //TODO: Add private constructors optional
  //This class contains all the app texts in string formats.

  // ------------------ 🌍 Global Texts ------------------
  static const String and = "and";
  static const String skip = "Skip";
  static const String done = "Done";
  static const String submit = "Submit";
  static const String tContinue = "Continue";
  static const String yes = "Yes";
  static const String no = "No";
  static const String ok = "OK";
  static const String cancel = "Cancel";
  static const String back = "Back";
  static const String next = "Next";
  static const String search = "Search";
  static const String loading = "Loading...";
  static const String retry = "Retry";

  // ------------------ 🚀 Onboarding ------------------
  static const String onBoardingTitle1 = "Choose your product";
  static const String onBoardingTitle2 = "Select payment method";
  static const String onBoardingTitle3 = "Deliver at your doorstep";

  static const String onBoardingSubTitle1 =
      "Welcome to a world of limitless choices - Your Perfect Product Awaits!";
  static const String onBoardingSubTitle2 =
      "For Seamless Transactions, choose your payment path!";
  static const String onBoardingSubTitle3 =
      "From our doorstep to yours - Secure and contactless delivery.";

  // ------------------ 🔑 Authentication ------------------
  static const String loginTitle = 'Welcome back,';
  static const String loginSubTitle =
      'Discover limitless choices and unmatched convenience.';
  static const String signIn = "Sign In";
  static const String signUp = "Sign Up";
  static const String createAccount = "Create Account";
  static const String logout = "Log Out";

  //Form Fields
  static const String firstName = "First Name";
  static const String lastName = "Last Name";
  static const String email = "Email";
  static const String password = "Password";
  static const String newPassword = "New Password";
  static const String confirmPassword = "Confirm Password";
  static const String userName = "Username";
  static const String phoneNumber = "Phone Number";

  //Auth Actions
  static const String rememberMe = "Remember Me";
  static const String forgotPassword = "Forgot Password?";
  static const String orSignInWith = "or sign in with";
  static const String orSignUpWith = "or sign up with";

  //Legal
  static const String agreeToPrivacyPolicy = "Privacy Policy";
  static const String termsOfUse = "Terms of Use";
  static const String iAgreeTo = "I Agree to";

  //Verification
  static const String verificationCode = "Verification Code";
  static const String resendEmail = "Resend Email";
  static const String resendEmailIn = "Resend email in";

  //Headings
  static const String signupTitle = "Let's Create your Account";
  static const String confirmEmail = "Verify your Email Address";
  static const String confirmEmailSubtitle =
      "Welcome to the ultimate shopping destination. Your account is created, unleash the joy of seamless online shopping.";

  // ------------------ 🔒 Forgot & Change Password ------------------
  static const String forgetPasswordTitle = "Forgot Password?";
  static const String forgetPasswordSubtitle =
      "Don’t worry! Just enter your email and we’ll send you a link to reset your password.";
  static const String changeYourPasswordTitle = "Change Your Password";
  static const String changeYourPasswordSubtitle =
      "Set a new password to secure your account and continue shopping seamlessly.";
  static const String resetPassword = "Reset Password";
  static const String updatePassword = "Update Password";

  // ------------------ 🏠 Home ------------------
  static const String homeAppBarTitle = "Good Day for Shopping";
  static const String homeAppBarSubTitle = "Neil Gala";
  static const String categories = "Categories";
  static const String popularProducts = "Popular Products";
  static const String recommendedForYou = "Recommended for You";
  static const String viewAll = "View All";

  // ------------------ 👤 Profile ------------------
  static const String profile = "Profile";
  static const String editProfile = "Edit Profile";
  static const String accountSettings = "Account Settings";
  static const String addressBook = "Address Book";
  static const String notifications = "Notifications";
  static const String paymentMethods = "Payment Methods";
  static const String myOrders = "My Orders";
  static const String savedItems = "Saved Items";
  static const String helpCenter = "Help Center";
  static const String aboutUs = "About Us";

  // ------------------ 🛒 Cart ------------------
  static const String cart = "Cart";
  static const String addToCart = "Add to Cart";
  static const String removeFromCart = "Remove from Cart";
  static const String cartEmpty = "Your cart is empty!";
  static const String cartTotal = "Total";
  static const String checkout = "Checkout";

  // ------------------ 💳 Checkout ------------------
  static const String shippingAddress = "Shipping Address";
  static const String paymentMethod = "Payment Method";
  static const String placeOrder = "Place Order";
  static const String orderSummary = "Order Summary";

  // ------------------ 📦 Orders ------------------
  static const String orders = "Orders";
  static const String orderDetails = "Order Details";
  static const String orderPlaced = "Order Placed";
  static const String orderShipped = "Order Shipped";
  static const String orderDelivered = "Order Delivered";
  static const String orderCancelled = "Order Cancelled";

  // ------------------ ⚙️ Settings ------------------
  static const String settings = "Settings";
  static const String appTheme = "App Theme";
  static const String darkMode = "Dark Mode";
  static const String language = "Language";
  static const String security = "Security";

  // ------------------ ⚠️ Error & Validation ------------------
  static const String invalidEmail = "Invalid email address";
  static const String invalidPassword =
      "Password must be at least 8 characters";
  static const String fieldRequired = "This field is required";
  static const String passwordsDoNotMatch = "Passwords do not match";
  static const String somethingWentWrong =
      "Something went wrong, please try again";
}
