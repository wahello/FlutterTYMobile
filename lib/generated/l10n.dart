// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S(this.localeName);
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S(localeName);
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  final String localeName;

  String get title {
    return Intl.message(
      'TY International V1',
      name: 'title',
      desc: 'Title for the Demo application',
      args: [],
    );
  }

  String get pageTitleHome {
    return Intl.message(
      'Home',
      name: 'pageTitleHome',
      desc: '',
      args: [],
    );
  }

  String get pageTitleTutorial {
    return Intl.message(
      'Tutorial',
      name: 'pageTitleTutorial',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMarquee {
    return Intl.message(
      'Announcement',
      name: 'pageTitleMarquee',
      desc: '',
      args: [],
    );
  }

  String get pageTitleRouter {
    return Intl.message(
      'Line Navigation',
      name: 'pageTitleRouter',
      desc: '',
      args: [],
    );
  }

  String get pageTitleRank {
    return Intl.message(
      'Vip Tier',
      name: 'pageTitleRank',
      desc: '',
      args: [],
    );
  }

  String get pageTitleStore {
    return Intl.message(
      'Store',
      name: 'pageTitleStore',
      desc: '',
      args: [],
    );
  }

  String get pageTitleSign {
    return Intl.message(
      'Sign in',
      name: 'pageTitleSign',
      desc: '',
      args: [],
    );
  }

  String get pageTitleRoller {
    return Intl.message(
      'Lucky Roulette',
      name: 'pageTitleRoller',
      desc: '',
      args: [],
    );
  }

  String get pageTitleDeposit {
    return Intl.message(
      'Recharge',
      name: 'pageTitleDeposit',
      desc: '',
      args: [],
    );
  }

  String get pageTitlePromo {
    return Intl.message(
      'Offer',
      name: 'pageTitlePromo',
      desc: '',
      args: [],
    );
  }

  String get pageTitleService {
    return Intl.message(
      'Support',
      name: 'pageTitleService',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMember {
    return Intl.message(
      'My',
      name: 'pageTitleMember',
      desc: '',
      args: [],
    );
  }

  String get pageTitleLogin {
    return Intl.message(
      'Login',
      name: 'pageTitleLogin',
      desc: '',
      args: [],
    );
  }

  String get pageTitleLogin2 {
    return Intl.message(
      'Member Login',
      name: 'pageTitleLogin2',
      desc: '',
      args: [],
    );
  }

  String get pageTitleRegister {
    return Intl.message(
      'Register',
      name: 'pageTitleRegister',
      desc: '',
      args: [],
    );
  }

  String get pageTitleRegister2 {
    return Intl.message(
      'Register Free',
      name: 'pageTitleRegister2',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberTransfer {
    return Intl.message(
      'Transfer',
      name: 'pageTitleMemberTransfer',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberCard {
    return Intl.message(
      'Bank Card',
      name: 'pageTitleMemberCard',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberWithdraw {
    return Intl.message(
      'Withdraw',
      name: 'pageTitleMemberWithdraw',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberBalance {
    return Intl.message(
      'Platform Balance',
      name: 'pageTitleMemberBalance',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberWallet {
    return Intl.message(
      'No Wallet',
      name: 'pageTitleMemberWallet',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberMessage {
    return Intl.message(
      'Site Message',
      name: 'pageTitleMemberMessage',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberAccount {
    return Intl.message(
      'Account Center',
      name: 'pageTitleMemberAccount',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberPassword {
    return Intl.message(
      'Change Password',
      name: 'pageTitleMemberPassword',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberTransaction {
    return Intl.message(
      'Transfer Record',
      name: 'pageTitleMemberTransaction',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberBets {
    return Intl.message(
      'Bet History',
      name: 'pageTitleMemberBets',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberDeals {
    return Intl.message(
      'Transaction History',
      name: 'pageTitleMemberDeals',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberFlow {
    return Intl.message(
      'Flowing Record',
      name: 'pageTitleMemberFlow',
      desc: '',
      args: [],
    );
  }

  String get pageTitleMemberAgent {
    return Intl.message(
      'Agent',
      name: 'pageTitleMemberAgent',
      desc: '',
      args: [],
    );
  }

  String toolBarMemberCredit(dynamic value) {
    return Intl.message(
      '￥ $value',
      name: 'toolBarMemberCredit',
      desc: '',
      args: [value],
    );
  }

  String get sideMenuThemeSwitch {
    return Intl.message(
      'Change Skin:',
      name: 'sideMenuThemeSwitch',
      desc: '',
      args: [],
    );
  }

  String get sideMenuThemeSwitchDark {
    return Intl.message(
      'deep',
      name: 'sideMenuThemeSwitchDark',
      desc: '',
      args: [],
    );
  }

  String get sideMenuThemeSwitchLight {
    return Intl.message(
      '浅',
      name: 'sideMenuThemeSwitchLight',
      desc: '',
      args: [],
    );
  }

  String get workInProgress {
    return Intl.message(
      'Features coming soon!',
      name: 'workInProgress',
      desc: '',
      args: [],
    );
  }

  String get btnMenu {
    return Intl.message(
      'Menu',
      name: 'btnMenu',
      desc: '',
      args: [],
    );
  }

  String get btnBack {
    return Intl.message(
      'Back',
      name: 'btnBack',
      desc: '',
      args: [],
    );
  }

  String get btnRefresh {
    return Intl.message(
      'Refresh',
      name: 'btnRefresh',
      desc: '',
      args: [],
    );
  }

  String get btnLogin {
    return Intl.message(
      'Login',
      name: 'btnLogin',
      desc: '',
      args: [],
    );
  }

  String get btnRegister {
    return Intl.message(
      'Register',
      name: 'btnRegister',
      desc: '',
      args: [],
    );
  }

  String get btnResetPassword {
    return Intl.message(
      'Forgot Password',
      name: 'btnResetPassword',
      desc: '',
      args: [],
    );
  }

  String get btnSignUp {
    return Intl.message(
      'Sign in',
      name: 'btnSignUp',
      desc: '',
      args: [],
    );
  }

  String btnSignUpTv(dynamic value) {
    return Intl.message(
      'Accumulated sign-in $value days',
      name: 'btnSignUpTv',
      desc: '',
      args: [value],
    );
  }

  String get btnSignUpAlready {
    return Intl.message(
      'Signed in',
      name: 'btnSignUpAlready',
      desc: '',
      args: [],
    );
  }

  String get btnSignUpSuccess {
    return Intl.message(
      'Sign in successfully !!',
      name: 'btnSignUpSuccess',
      desc: '',
      args: [],
    );
  }

  String get btnSignUpFailed {
    return Intl.message(
      'Sign in failed !!',
      name: 'btnSignUpFailed',
      desc: '',
      args: [],
    );
  }

  String get btnNoticeGeneral {
    return Intl.message(
      'General Message',
      name: 'btnNoticeGeneral',
      desc: '',
      args: [],
    );
  }

  String get btnNoticeMaintenance {
    return Intl.message(
      'Maintenance Notification',
      name: 'btnNoticeMaintenance',
      desc: '',
      args: [],
    );
  }

  String get hintActionLogin {
    return Intl.message(
      'Please login first',
      name: 'hintActionLogin',
      desc: '',
      args: [],
    );
  }

  String get hintTitleLogin {
    return Intl.message(
      'Please enter your member info',
      name: 'hintTitleLogin',
      desc: '',
      args: [],
    );
  }

  String get homeHintWelcomeLogin {
    return Intl.message(
      'Welcome！ Please login first',
      name: 'homeHintWelcomeLogin',
      desc: '',
      args: [],
    );
  }

  String get homeHintWelcome {
    return Intl.message(
      'Welcome！',
      name: 'homeHintWelcome',
      desc: '',
      args: [],
    );
  }

  String homeHintWelcomeMember(dynamic name) {
    return Intl.message(
      'Hello, $name！',
      name: 'homeHintWelcomeMember',
      desc: '',
      args: [name],
    );
  }

  String get homeHintMemberCreditLeft {
    return Intl.message(
      'Credit',
      name: 'homeHintMemberCreditLeft',
      desc: '',
      args: [],
    );
  }

  String get hintAccount {
    return Intl.message(
      'UserName *',
      name: 'hintAccount',
      desc: '',
      args: [],
    );
  }

  String get hintAccountPassword {
    return Intl.message(
      'Password *',
      name: 'hintAccountPassword',
      desc: '',
      args: [],
    );
  }

  String get hintName {
    return Intl.message(
      'Enter username',
      name: 'hintName',
      desc: '',
      args: [],
    );
  }

  String get hintEmail {
    return Intl.message(
      'Enter Email',
      name: 'hintEmail',
      desc: '',
      args: [],
    );
  }

  String get hintPassword {
    return Intl.message(
      'Enter password',
      name: 'hintPassword',
      desc: '',
      args: [],
    );
  }

  String get hintConfirmed {
    return Intl.message(
      'Enter the password again',
      name: 'hintConfirmed',
      desc: '',
      args: [],
    );
  }

  String get alertTitleError {
    return Intl.message(
      'Error',
      name: 'alertTitleError',
      desc: '',
      args: [],
    );
  }

  String get alertTitleWarning {
    return Intl.message(
      'Warning',
      name: 'alertTitleWarning',
      desc: '',
      args: [],
    );
  }

  String get alertTitleHint {
    return Intl.message(
      'Hint',
      name: 'alertTitleHint',
      desc: '',
      args: [],
    );
  }

  String get alertButtonYes {
    return Intl.message(
      'Yes',
      name: 'alertButtonYes',
      desc: '',
      args: [],
    );
  }

  String get alertButtonNo {
    return Intl.message(
      'No',
      name: 'alertButtonNo',
      desc: '',
      args: [],
    );
  }

  String get alertButtonOk {
    return Intl.message(
      'Confirm',
      name: 'alertButtonOk',
      desc: '',
      args: [],
    );
  }

  String get alertButtonCancel {
    return Intl.message(
      'Cancel',
      name: 'alertButtonCancel',
      desc: '',
      args: [],
    );
  }

  String get alertButtonClose {
    return Intl.message(
      'Close',
      name: 'alertButtonClose',
      desc: '',
      args: [],
    );
  }

  String get messageClearDataRestart {
    return Intl.message(
      'Language changed, clearing data, restarting later',
      name: 'messageClearDataRestart',
      desc: '',
      args: [],
    );
  }

  String messageWelcomeUser(dynamic name) {
    return Intl.message(
      'Welcome, $name',
      name: 'messageWelcomeUser',
      desc: '',
      args: [name],
    );
  }

  String get messageWelcome {
    return Intl.message(
      'Welcome, please login / register',
      name: 'messageWelcome',
      desc: '',
      args: [],
    );
  }

  String get messageRegisterFailed {
    return Intl.message(
      'Registration failed',
      name: 'messageRegisterFailed',
      desc: '',
      args: [],
    );
  }

  String get messageLoginFailed {
    return Intl.message(
      'Login Failed',
      name: 'messageLoginFailed',
      desc: '',
      args: [],
    );
  }

  String messageLogout(dynamic name) {
    return Intl.message(
      '$name, please log in again',
      name: 'messageLogout',
      desc: '',
      args: [name],
    );
  }

  String get messageNoEvent {
    return Intl.message(
      'No activity currently',
      name: 'messageNoEvent',
      desc: '',
      args: [],
    );
  }

  String messageTaskSuccess(dynamic msg) {
    return Intl.message(
      'Success: $msg',
      name: 'messageTaskSuccess',
      desc: '',
      args: [msg],
    );
  }

  String messageTaskCanceled(dynamic msg) {
    return Intl.message(
      'Cancel: $msg',
      name: 'messageTaskCanceled',
      desc: '',
      args: [msg],
    );
  }

  String get messageInvalidName {
    return Intl.message(
      'Malformed name',
      name: 'messageInvalidName',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidEmail {
    return Intl.message(
      'Mailbox is malformed',
      name: 'messageInvalidEmail',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidPhone {
    return Intl.message(
      'Wrong phone format',
      name: 'messageInvalidPhone',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidVerify {
    return Intl.message(
      'Please enter a verification code',
      name: 'messageInvalidVerify',
      desc: '',
      args: [],
    );
  }

  String messageInvalidPasswordArg(dynamic num) {
    return Intl.message(
      'Password must be at least $num words',
      name: 'messageInvalidPasswordArg',
      desc: '',
      args: [num],
    );
  }

  String get messageInvalidAccount {
    return Intl.message(
      'Username should be 6 ~ 12 words',
      name: 'messageInvalidAccount',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidPassword {
    return Intl.message(
      'Password should be 6 ~ 20 words',
      name: 'messageInvalidPassword',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidConfirmPassword {
    return Intl.message(
      'Password does not match',
      name: 'messageInvalidConfirmPassword',
      desc: '',
      args: [],
    );
  }

  String messageInvalidDepositAmount(dynamic num) {
    return Intl.message(
      'The minimum value is $num',
      name: 'messageInvalidDepositAmount',
      desc: '',
      args: [num],
    );
  }

  String messageInvalidDepositAmountRange(dynamic num, dynamic num2) {
    return Intl.message(
      'Input range: $num ~ $num2',
      name: 'messageInvalidDepositAmountRange',
      desc: '',
      args: [num, num2],
    );
  }

  String messageInvalidDepositAmountRangeStep(dynamic num, dynamic num2, dynamic num3) {
    return Intl.message(
      'Input range: $num ~ $num2 (amount is a multiple of $num3)',
      name: 'messageInvalidDepositAmountRangeStep',
      desc: '',
      args: [num, num2, num3],
    );
  }

  String get messageInvalidDepositName {
    return Intl.message(
      'Incorrect account name',
      name: 'messageInvalidDepositName',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidCardOwner {
    return Intl.message(
      'Wrong cardholder name',
      name: 'messageInvalidCardOwner',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidCardNumber {
    return Intl.message(
      'The card number is 16 ~ 19 characters',
      name: 'messageInvalidCardNumber',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidCardBankPoint {
    return Intl.message(
      'The name must be greater than 3 characters',
      name: 'messageInvalidCardBankPoint',
      desc: '',
      args: [],
    );
  }

  String get messageInvalidWithdrawPassword {
    return Intl.message(
      'Password is 4 ~ 8 words',
      name: 'messageInvalidWithdrawPassword',
      desc: '',
      args: [],
    );
  }

  String get messageWarnUsingCellular {
    return Intl.message(
      'You are using a mobile network',
      name: 'messageWarnUsingCellular',
      desc: '',
      args: [],
    );
  }

  String get messageWarnNetworkLocation {
    return Intl.message(
      'This service is not available in your network area',
      name: 'messageWarnNetworkLocation',
      desc: '',
      args: [],
    );
  }

  String get messageWarnLoadingGame {
    return Intl.message(
      'Please wait while loading the game ...',
      name: 'messageWarnLoadingGame',
      desc: '',
      args: [],
    );
  }

  String get messageWarnNoHistoryData {
    return Intl.message(
      'No data found',
      name: 'messageWarnNoHistoryData',
      desc: '',
      args: [],
    );
  }

  String get messageWarnNoPromoData {
    return Intl.message(
      'No offer found',
      name: 'messageWarnNoPromoData',
      desc: '',
      args: [],
    );
  }

  String get messageWarnNoPromoInfo {
    return Intl.message(
      'No offer information found',
      name: 'messageWarnNoPromoInfo',
      desc: '',
      args: [],
    );
  }

  String messageError(dynamic msg, dynamic msg2) {
    return Intl.message(
      'Error: $msg ($msg2)',
      name: 'messageError',
      desc: '',
      args: [msg, msg2],
    );
  }

  String messageErrorStatus(dynamic msg) {
    return Intl.message(
      'Error: $msg',
      name: 'messageErrorStatus',
      desc: '',
      args: [msg],
    );
  }

  String get messageErrorInternal {
    return Intl.message(
      'Internal error, please try again later or contact customer service',
      name: 'messageErrorInternal',
      desc: '',
      args: [],
    );
  }

  String get messageErrorCachedFile {
    return Intl.message(
      'Cached file error, please try again later or contact customer service',
      name: 'messageErrorCachedFile',
      desc: '',
      args: [],
    );
  }

  String get messageErrorData {
    return Intl.message(
      'User data error',
      name: 'messageErrorData',
      desc: '',
      args: [],
    );
  }

  String get messageErrorAutoLogin {
    return Intl.message(
      'Data error, please log in manually',
      name: 'messageErrorAutoLogin',
      desc: '',
      args: [],
    );
  }

  String get messageErrorNotLogin {
    return Intl.message(
      'Please login first',
      name: 'messageErrorNotLogin',
      desc: '',
      args: [],
    );
  }

  String get messageErrorNoNetwork {
    return Intl.message(
      'Please check the network status',
      name: 'messageErrorNoNetwork',
      desc: '',
      args: [],
    );
  }

  String get messageErrorNoServerConnection {
    return Intl.message(
      'Unable to connect to the server !!',
      name: 'messageErrorNoServerConnection',
      desc: '',
      args: [],
    );
  }

  String get messageErrorTimeoutError {
    return Intl.message(
      'Network timed out, please try again later',
      name: 'messageErrorTimeoutError',
      desc: '',
      args: [],
    );
  }

  String get messageErrorServerError {
    return Intl.message(
      'Server error, please try again later or contact customer service',
      name: 'messageErrorServerError',
      desc: '',
      args: [],
    );
  }

  String get messageErrorLoadingGame {
    return Intl.message(
      'An error occurred while loading the game, please try again later',
      name: 'messageErrorLoadingGame',
      desc: '',
      args: [],
    );
  }

  String get messageErrorLoadingPay {
    return Intl.message(
      'Page loading error, please try again later',
      name: 'messageErrorLoadingPay',
      desc: '',
      args: [],
    );
  }

  String get messageErrorNoStoragePermission {
    return Intl.message(
      'Please turn on "Save" permissions',
      name: 'messageErrorNoStoragePermission',
      desc: '',
      args: [],
    );
  }

  String get messageErrorHasCardData {
    return Intl.message(
      'A bank card has been bound',
      name: 'messageErrorHasCardData',
      desc: '',
      args: [],
    );
  }

  String messageErrorFieldError(dynamic msg) {
    return Intl.message(
      'Please enter $msg',
      name: 'messageErrorFieldError',
      desc: '',
      args: [msg],
    );
  }

  String get messageErrorBindCgp {
    return Intl.message(
      'Please bind Cgp wallet first',
      name: 'messageErrorBindCgp',
      desc: '',
      args: [],
    );
  }

  String get messageErrorBindCpw {
    return Intl.message(
      'Please bind the wallet for buying treasure',
      name: 'messageErrorBindCpw',
      desc: '',
      args: [],
    );
  }

  String get messageErrorBindBankcard {
    return Intl.message(
      'Please bind your bank card first!',
      name: 'messageErrorBindBankcard',
      desc: '',
      args: [],
    );
  }

  String get messageCopy {
    return Intl.message(
      'Copy to clipboard',
      name: 'messageCopy',
      desc: '',
      args: [],
    );
  }

  String get messageCopyError {
    return Intl.message(
      'Copy failed',
      name: 'messageCopyError',
      desc: '',
      args: [],
    );
  }

  String get messageWait {
    return Intl.message(
      'Please wait while processing the request ...',
      name: 'messageWait',
      desc: '',
      args: [],
    );
  }

  String get messageWaitComplete {
    return Intl.message(
      'Don\'t exit while processing a request',
      name: 'messageWaitComplete',
      desc: '',
      args: [],
    );
  }

  String get messageSuccess {
    return Intl.message(
      'Success',
      name: 'messageSuccess',
      desc: '',
      args: [],
    );
  }

  String get messageFailed {
    return Intl.message(
      'Change failed, please try again later',
      name: 'messageFailed',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldTitleOld {
    return Intl.message(
      'Old Password:',
      name: 'userPwdFieldTitleOld',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldTitleNew {
    return Intl.message(
      'New Password:',
      name: 'userPwdFieldTitleNew',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldTitleConfirm {
    return Intl.message(
      'Password Confirmation:',
      name: 'userPwdFieldTitleConfirm',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldHintOld {
    return Intl.message(
      'Enter old password',
      name: 'userPwdFieldHintOld',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldHintNew {
    return Intl.message(
      'Enter new password',
      name: 'userPwdFieldHintNew',
      desc: '',
      args: [],
    );
  }

  String get userPwdFieldHintConfirm {
    return Intl.message(
      'Enter the new password again',
      name: 'userPwdFieldHintConfirm',
      desc: '',
      args: [],
    );
  }

  String get userPwdButtonTitle {
    return Intl.message(
      'Change Password',
      name: 'userPwdButtonTitle',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitleAccount {
    return Intl.message(
      'Account:',
      name: 'registerFieldTitleAccount',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitlePassword {
    return Intl.message(
      'Password:',
      name: 'registerFieldTitlePassword',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitleConfirm {
    return Intl.message(
      'Confirm Password:',
      name: 'registerFieldTitleConfirm',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitlePhone {
    return Intl.message(
      'Mobile number:',
      name: 'registerFieldTitlePhone',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitleRecommend {
    return Intl.message(
      'Recommended Code:',
      name: 'registerFieldTitleRecommend',
      desc: '',
      args: [],
    );
  }

  String get registerFieldTitleVerify {
    return Intl.message(
      'Verification Code:',
      name: 'registerFieldTitleVerify',
      desc: '',
      args: [],
    );
  }

  String get registerFieldHintVerify {
    return Intl.message(
      'Please enter a verification code',
      name: 'registerFieldHintVerify',
      desc: '',
      args: [],
    );
  }

  String get registerButtonTitleRefresh {
    return Intl.message(
      'Dotmap Refresh',
      name: 'registerButtonTitleRefresh',
      desc: '',
      args: [],
    );
  }

  String get registerButtonTitleRegister {
    return Intl.message(
      'Register',
      name: 'registerButtonTitleRegister',
      desc: '',
      args: [],
    );
  }

  String get promoCategoryAll {
    return Intl.message(
      'All',
      name: 'promoCategoryAll',
      desc: '',
      args: [],
    );
  }

  String get promoCategoryOther {
    return Intl.message(
      'Other',
      name: 'promoCategoryOther',
      desc: '',
      args: [],
    );
  }

  String get promoDetailPlatform {
    return Intl.message(
      'Applicable Platform',
      name: 'promoDetailPlatform',
      desc: '',
      args: [],
    );
  }

  String get promoDetailContent {
    return Intl.message(
      'Event Content',
      name: 'promoDetailContent',
      desc: '',
      args: [],
    );
  }

  String get promoDetailApply {
    return Intl.message(
      'Application Method',
      name: 'promoDetailApply',
      desc: '',
      args: [],
    );
  }

  String get promoDetailRules {
    return Intl.message(
      'Event Details',
      name: 'promoDetailRules',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleDeposit {
    return Intl.message(
      'Recharge',
      name: 'memberGridTitleDeposit',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleTransfer {
    return Intl.message(
      'Transfer',
      name: 'memberGridTitleTransfer',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleCard {
    return Intl.message(
      'Bank Card',
      name: 'memberGridTitleCard',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleWithdraw {
    return Intl.message(
      'Withdraw',
      name: 'memberGridTitleWithdraw',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleBalance {
    return Intl.message(
      'Platform balance',
      name: 'memberGridTitleBalance',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleWallet {
    return Intl.message(
      'Transfer Wallet',
      name: 'memberGridTitleWallet',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleMessage {
    return Intl.message(
      'Site Message',
      name: 'memberGridTitleMessage',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleAccount {
    return Intl.message(
      'Account Center',
      name: 'memberGridTitleAccount',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleTransaction {
    return Intl.message(
      'Transfer Record',
      name: 'memberGridTitleTransaction',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleBet {
    return Intl.message(
      'Bet History',
      name: 'memberGridTitleBet',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleDeal {
    return Intl.message(
      'Transaction History',
      name: 'memberGridTitleDeal',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleFlow {
    return Intl.message(
      'Flowing Record',
      name: 'memberGridTitleFlow',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleAgent {
    return Intl.message(
      'Agent',
      name: 'memberGridTitleAgent',
      desc: '',
      args: [],
    );
  }

  String get memberGridTitleLogout {
    return Intl.message(
      'Sign Out',
      name: 'memberGridTitleLogout',
      desc: '',
      args: [],
    );
  }

  String get transferViewTitleIn {
    return Intl.message(
      'Transfer In',
      name: 'transferViewTitleIn',
      desc: '',
      args: [],
    );
  }

  String get transferViewTitleAmount {
    return Intl.message(
      'Amount',
      name: 'transferViewTitleAmount',
      desc: '',
      args: [],
    );
  }

  String get transferViewTitleOption {
    return Intl.message(
      'Select Amount',
      name: 'transferViewTitleOption',
      desc: '',
      args: [],
    );
  }

  String get transferViewTextOptionAll {
    return Intl.message(
      'All credits',
      name: 'transferViewTextOptionAll',
      desc: '',
      args: [],
    );
  }

  String get transferViewButtonConfirm {
    return Intl.message(
      'Confirm Transfer',
      name: 'transferViewButtonConfirm',
      desc: '',
      args: [],
    );
  }

  String get transferDataError {
    return Intl.message(
      'Data error, please select again',
      name: 'transferDataError',
      desc: '',
      args: [],
    );
  }

  String get transferResultAlertTitle {
    return Intl.message(
      'Transfer failed',
      name: 'transferResultAlertTitle',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleOwner {
    return Intl.message(
      'Account Name',
      name: 'bankcardViewTitleOwner',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleBankName {
    return Intl.message(
      'Bank Name',
      name: 'bankcardViewTitleBankName',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleCardNumber {
    return Intl.message(
      'Account (Card) Number',
      name: 'bankcardViewTitleCardNumber',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleBankPoint {
    return Intl.message(
      'Bank Branch',
      name: 'bankcardViewTitleBankPoint',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleBankProvince {
    return Intl.message(
      'Open an Account',
      name: 'bankcardViewTitleBankProvince',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleBankArea {
    return Intl.message(
      'Area',
      name: 'bankcardViewTitleBankArea',
      desc: '',
      args: [],
    );
  }

  String get bankcardViewTitleSend {
    return Intl.message(
      'Send',
      name: 'bankcardViewTitleSend',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewTitleAmount {
    return Intl.message(
      'Withdrawal Amount',
      name: 'withdrawViewTitleAmount',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewTitlePwd {
    return Intl.message(
      'Withdrawal Password',
      name: 'withdrawViewTitlePwd',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewTitleNote {
    return Intl.message(
      'Note',
      name: 'withdrawViewTitleNote',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewTitleSend {
    return Intl.message(
      'Submit',
      name: 'withdrawViewTitleSend',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewOptionVirtual {
    return Intl.message(
      'Do not use virtual currency',
      name: 'withdrawViewOptionVirtual',
      desc: '',
      args: [],
    );
  }

  String get withdrawViewOptionHint {
    return Intl.message(
      'If you want to withdraw virtual currency, please select it after binding',
      name: 'withdrawViewOptionHint',
      desc: '',
      args: [],
    );
  }

  String get walletViewTitleMy {
    return Intl.message(
      'My Wallet',
      name: 'walletViewTitleMy',
      desc: '',
      args: [],
    );
  }

  String get walletViewTitleRemain {
    return Intl.message(
      'Total balance',
      name: 'walletViewTitleRemain',
      desc: '',
      args: [],
    );
  }

  String get walletViewTitleWalletSingle {
    return Intl.message(
      'Single Wallet',
      name: 'walletViewTitleWalletSingle',
      desc: '',
      args: [],
    );
  }

  String get walletViewTitleWalletMulti {
    return Intl.message(
      'Multi-Wallet',
      name: 'walletViewTitleWalletMulti',
      desc: '',
      args: [],
    );
  }

  String get walletViewButtonOneclick {
    return Intl.message(
      'One Click Home',
      name: 'walletViewButtonOneclick',
      desc: '',
      args: [],
    );
  }

  String get walletViewButtonConfrim {
    return Intl.message(
      'OK',
      name: 'walletViewButtonConfrim',
      desc: '',
      args: [],
    );
  }

  String get walletViewHintOneclick {
    return Intl.message(
      'All platform credits are transferred to the main wallet',
      name: 'walletViewHintOneclick',
      desc: '',
      args: [],
    );
  }

  String get walletViewHintWalletSingle {
    return Intl.message(
      '* System presets automatically transfer credits to open game platforms',
      name: 'walletViewHintWalletSingle',
      desc: '',
      args: [],
    );
  }

  String get walletViewHintWalletMulti {
    return Intl.message(
      '* Manually transfer credits to this game platform',
      name: 'walletViewHintWalletMulti',
      desc: '',
      args: [],
    );
  }

  String get centerViewTitleData {
    return Intl.message(
      'Profile',
      name: 'centerViewTitleData',
      desc: '',
      args: [],
    );
  }

  String get centerViewTitleLotto {
    return Intl.message(
      'Liuhe Lucky Code',
      name: 'centerViewTitleLotto',
      desc: '',
      args: [],
    );
  }

  String get centerViewTitleVip {
    return Intl.message(
      'Vip Tier',
      name: 'centerViewTitleVip',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleAccount {
    return Intl.message(
      'Username:',
      name: 'centerTextTitleAccount',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleName {
    return Intl.message(
      'Name:',
      name: 'centerTextTitleName',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleBirth {
    return Intl.message(
      'Birthday:',
      name: 'centerTextTitleBirth',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleDateHint {
    return Intl.message(
      'Format is: Yyyy–Mm–Dd',
      name: 'centerTextTitleDateHint',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleDateError {
    return Intl.message(
      'Please enter the correct date (format: Yyyy–Mm–Dd)',
      name: 'centerTextTitleDateError',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleMailError {
    return Intl.message(
      'Please enter the correct email',
      name: 'centerTextTitleMailError',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitlePhone {
    return Intl.message(
      'Mobile number:',
      name: 'centerTextTitlePhone',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleMail {
    return Intl.message(
      'Mailbox:',
      name: 'centerTextTitleMail',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleWechat {
    return Intl.message(
      'WeChat:',
      name: 'centerTextTitleWechat',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleCgp {
    return Intl.message(
      'Cgp Wallet',
      name: 'centerTextTitleCgp',
      desc: '',
      args: [],
    );
  }

  String get centerTextTitleCpw {
    return Intl.message(
      'Shop treasure wallet',
      name: 'centerTextTitleCpw',
      desc: '',
      args: [],
    );
  }

  String get centerTextButtonChangePwd {
    return Intl.message(
      'Change Password',
      name: 'centerTextButtonChangePwd',
      desc: '',
      args: [],
    );
  }

  String get centerTextButtonBind {
    return Intl.message(
      'Bind',
      name: 'centerTextButtonBind',
      desc: '',
      args: [],
    );
  }

  String get centerTextButtonEdit {
    return Intl.message(
      'Modify',
      name: 'centerTextButtonEdit',
      desc: '',
      args: [],
    );
  }

  String get centerTextButtonSend {
    return Intl.message(
      'Send',
      name: 'centerTextButtonSend',
      desc: '',
      args: [],
    );
  }

  String get centerHintNoName {
    return Intl.message(
      'Please go to the binding bank card to make related settings',
      name: 'centerHintNoName',
      desc: '',
      args: [],
    );
  }

  String get centerLuckyTitle {
    return Intl.message(
      'Please fill in the numbers from 01 to 49 in the following 7 spaces',
      name: 'centerLuckyTitle',
      desc: '',
      args: [],
    );
  }

  String get centerLuckyNumberError {
    return Intl.message(
      'Number range: 01 ~ 49',
      name: 'centerLuckyNumberError',
      desc: '',
      args: [],
    );
  }

  String get centerLuckyHint {
    return Intl.message(
      'Bind the Liuhe Lucky Code, you can participate in the Liuhe Lottery Match Code, wonderful gift for you !!!',
      name: 'centerLuckyHint',
      desc: '',
      args: [],
    );
  }

  String get centerLuckyButtonGenerate {
    return Intl.message(
      'Auto Generated',
      name: 'centerLuckyButtonGenerate',
      desc: '',
      args: [],
    );
  }

  String get centerLuckyButtonBind {
    return Intl.message(
      'Confirm Bind',
      name: 'centerLuckyButtonBind',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextValidAmount {
    return Intl.message(
      'Valid bets:',
      name: 'centerVipTextValidAmount',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextBetAmount {
    return Intl.message(
      'Slot Machine Betting:',
      name: 'centerVipTextBetAmount',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextVip0 {
    return Intl.message(
      'Normal',
      name: 'centerVipTextVip0',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextVip1 {
    return Intl.message(
      'Gold',
      name: 'centerVipTextVip1',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextVip2 {
    return Intl.message(
      'Ruby',
      name: 'centerVipTextVip2',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextVip3 {
    return Intl.message(
      'Emerald',
      name: 'centerVipTextVip3',
      desc: '',
      args: [],
    );
  }

  String get centerVipTextVip4 {
    return Intl.message(
      'Diamond',
      name: 'centerVipTextVip4',
      desc: '',
      args: [],
    );
  }

  String centerVipTextVipCondition(dynamic num) {
    return Intl.message(
      '$num 万',
      name: 'centerVipTextVipCondition',
      desc: '',
      args: [num],
    );
  }

  String get transactionViewSpinnerTitle {
    return Intl.message(
      'Transfer time',
      name: 'transactionViewSpinnerTitle',
      desc: '',
      args: [],
    );
  }

  String get transactionViewSpinnerDate0 {
    return Intl.message(
      'All time',
      name: 'transactionViewSpinnerDate0',
      desc: '',
      args: [],
    );
  }

  String get transactionViewSpinnerDate1 {
    return Intl.message(
      'today',
      name: 'transactionViewSpinnerDate1',
      desc: '',
      args: [],
    );
  }

  String get transactionViewSpinnerDate2 {
    return Intl.message(
      'Yesterday',
      name: 'transactionViewSpinnerDate2',
      desc: '',
      args: [],
    );
  }

  String get transactionViewSpinnerDate3 {
    return Intl.message(
      'within one month',
      name: 'transactionViewSpinnerDate3',
      desc: '',
      args: [],
    );
  }

  String get transactionHeaderSerial {
    return Intl.message(
      'Serial Number',
      name: 'transactionHeaderSerial',
      desc: '',
      args: [],
    );
  }

  String get transactionHeaderDate {
    return Intl.message(
      'Date',
      name: 'transactionHeaderDate',
      desc: '',
      args: [],
    );
  }

  String get transactionHeaderType {
    return Intl.message(
      'Category',
      name: 'transactionHeaderType',
      desc: '',
      args: [],
    );
  }

  String get transactionHeaderDesc {
    return Intl.message(
      'Description',
      name: 'transactionHeaderDesc',
      desc: '',
      args: [],
    );
  }

  String get transactionHeaderAmount {
    return Intl.message(
      'Amount',
      name: 'transactionHeaderAmount',
      desc: '',
      args: [],
    );
  }

  String get betsSpinnerTitlePlatform {
    return Intl.message(
      'Game Platform',
      name: 'betsSpinnerTitlePlatform',
      desc: '',
      args: [],
    );
  }

  String get betsSpinnerTitleTime {
    return Intl.message(
      'betsSpinnerTitleTime',
      name: 'betsSpinnerTitleTime',
      desc: '',
      args: [],
    );
  }

  String betsTextTotal(dynamic value) {
    return Intl.message(
      'Total: \$ $value',
      name: 'betsTextTotal',
      desc: '',
      args: [value],
    );
  }

  String get betsHeaderDate {
    return Intl.message(
      'Time',
      name: 'betsHeaderDate',
      desc: '',
      args: [],
    );
  }

  String get betsHeaderId {
    return Intl.message(
      'bet slip number',
      name: 'betsHeaderId',
      desc: '',
      args: [],
    );
  }

  String get betsHeaderPlatform {
    return Intl.message(
      'Platform',
      name: 'betsHeaderPlatform',
      desc: '',
      args: [],
    );
  }

  String get betsHeaderGame {
    return Intl.message(
      'Game Name',
      name: 'betsHeaderGame',
      desc: '',
      args: [],
    );
  }

  String get betsHeaderAmount {
    return Intl.message(
      'Bet Amount',
      name: 'betsHeaderAmount',
      desc: '',
      args: [],
    );
  }

  String get betsHeaderBonus {
    return Intl.message(
      'Payout Amount',
      name: 'betsHeaderBonus',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerType0 {
    return Intl.message(
      'All',
      name: 'dealsViewSpinnerType0',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerType1 {
    return Intl.message(
      'Recharge',
      name: 'dealsViewSpinnerType1',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerType2 {
    return Intl.message(
      'Withdrawal',
      name: 'dealsViewSpinnerType2',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerType3 {
    return Intl.message(
      'Bonus',
      name: 'dealsViewSpinnerType3',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerStatus0 {
    return Intl.message(
      'All',
      name: 'dealsViewSpinnerStatus0',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerStatus1 {
    return Intl.message(
      'Success',
      name: 'dealsViewSpinnerStatus1',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerStatus2 {
    return Intl.message(
      'Failed',
      name: 'dealsViewSpinnerStatus2',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerStatus3 {
    return Intl.message(
      'Processing',
      name: 'dealsViewSpinnerStatus3',
      desc: '',
      args: [],
    );
  }

  String get dealsViewSpinnerStatus4 {
    return Intl.message(
      'New Deal',
      name: 'dealsViewSpinnerStatus4',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderSerial {
    return Intl.message(
      'Single Number',
      name: 'dealsHeaderSerial',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderType {
    return Intl.message(
      'items',
      name: 'dealsHeaderType',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderDetail {
    return Intl.message(
      'Details',
      name: 'dealsHeaderDetail',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderStatus {
    return Intl.message(
      'Order Status',
      name: 'dealsHeaderStatus',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderDate {
    return Intl.message(
      'Date',
      name: 'dealsHeaderDate',
      desc: '',
      args: [],
    );
  }

  String get dealsHeaderAmount {
    return Intl.message(
      'Amount',
      name: 'dealsHeaderAmount',
      desc: '',
      args: [],
    );
  }

  String get agentTextTitleData {
    return Intl.message(
      'Agent Text',
      name: 'agentTextTitleData',
      desc: '',
      args: [],
    );
  }

  String get agentTextTitleChart {
    return Intl.message(
      'Agent Report',
      name: 'agentTextTitleChart',
      desc: '',
      args: [],
    );
  }

  String get agentTextTitleCommission {
    return Intl.message(
      'Agent Commission Report',
      name: 'agentTextTitleCommission',
      desc: '',
      args: [],
    );
  }

  String get agentTextDataCode {
    return Intl.message(
      'Recommended code:',
      name: 'agentTextDataCode',
      desc: '',
      args: [],
    );
  }

  String get agentTextDataUrl {
    return Intl.message(
      'Agent Link:',
      name: 'agentTextDataUrl',
      desc: '',
      args: [],
    );
  }

  String get agentTextDataUpper {
    return Intl.message(
      'Upper account:',
      name: 'agentTextDataUpper',
      desc: '',
      args: [],
    );
  }

  String get agentTextDataLower {
    return Intl.message(
      'Subordinate account:',
      name: 'agentTextDataLower',
      desc: '',
      args: [],
    );
  }

  String get agentButtonTextRequest {
    return Intl.message(
      'Get Agent Code',
      name: 'agentButtonTextRequest',
      desc: '',
      args: [],
    );
  }

  String get agentButtonTextCopy {
    return Intl.message(
      'Copy',
      name: 'agentButtonTextCopy',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartDate {
    return Intl.message(
      'Time:',
      name: 'agentTextChartDate',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartMonth {
    return Intl.message(
      'This month',
      name: 'agentTextChartMonth',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartMonthPrev {
    return Intl.message(
      'Last month',
      name: 'agentTextChartMonthPrev',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartOption {
    return Intl.message(
      'Select',
      name: 'agentTextChartOption',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartPlatform {
    return Intl.message(
      'Platform',
      name: 'agentTextChartPlatform',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartCategory {
    return Intl.message(
      'Category',
      name: 'agentTextChartCategory',
      desc: '',
      args: [],
    );
  }

  String get agentTextChartQuery {
    return Intl.message(
      'Query',
      name: 'agentTextChartQuery',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleBank {
    return Intl.message(
      'Bank Deposit',
      name: 'depositPaymentTitleBank',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleQuick {
    return Intl.message(
      'Quick Pay (Recommended)',
      name: 'depositPaymentTitleQuick',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleUnion {
    return Intl.message(
      'UnionPay',
      name: 'depositPaymentTitleUnion',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleVirtual {
    return Intl.message(
      'Virtual Currency',
      name: 'depositPaymentTitleVirtual',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleAli {
    return Intl.message(
      'Alipay Pay',
      name: 'depositPaymentTitleAli',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleOnline {
    return Intl.message(
      'Online Payment',
      name: 'depositPaymentTitleOnline',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentTitleWechat {
    return Intl.message(
      'WeChat Pay',
      name: 'depositPaymentTitleWechat',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentSpinnerTitlePromo {
    return Intl.message(
      'Choose Offer',
      name: 'depositPaymentSpinnerTitlePromo',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentSpinnerTitleBank {
    return Intl.message(
      'Payment Bank',
      name: 'depositPaymentSpinnerTitleBank',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentSpinnerTitleMethod {
    return Intl.message(
      'Recharge Method',
      name: 'depositPaymentSpinnerTitleMethod',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentEditTitleName {
    return Intl.message(
      'Payee Name',
      name: 'depositPaymentEditTitleName',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentEditTitleNameHint {
    return Intl.message(
      'Please fill in your payer name',
      name: 'depositPaymentEditTitleNameHint',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentEditTitleAmount {
    return Intl.message(
      'Deposit Amount',
      name: 'depositPaymentEditTitleAmount',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentButtonTitleTutorial {
    return Intl.message(
      'Click to see teaching',
      name: 'depositPaymentButtonTitleTutorial',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentButtonTitleConfirm {
    return Intl.message(
      'OK',
      name: 'depositPaymentButtonTitleConfirm',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentMethodLocal1 {
    return Intl.message(
      'Transfer Funding',
      name: 'depositPaymentMethodLocal1',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentMethodLocal2 {
    return Intl.message(
      'Atm Deposit',
      name: 'depositPaymentMethodLocal2',
      desc: '',
      args: [],
    );
  }

  String get depositPaymentNoPromo {
    return Intl.message(
      'Abandon Application Offer',
      name: 'depositPaymentNoPromo',
      desc: '',
      args: [],
    );
  }

  String get depositHintTextAccount {
    return Intl.message(
      'Please contact customer service for recharge account information',
      name: 'depositHintTextAccount',
      desc: '',
      args: [],
    );
  }

  String depositHintTextMax(dynamic no) {
    return Intl.message(
      '$no single maximum limit',
      name: 'depositHintTextMax',
      desc: '',
      args: [no],
    );
  }

  String get depositHintTextService {
    return Intl.message(
      'Online customer service',
      name: 'depositHintTextService',
      desc: '',
      args: [],
    );
  }

  String get depositHintTextTitle {
    return Intl.message(
      'Notes',
      name: 'depositHintTextTitle',
      desc: '',
      args: [],
    );
  }

  String depositHintTextClearInfo(dynamic no) {
    return Intl.message(
      '$no [Important reminder] Do not keep your bank account, please re-acquire the latest collection account before each recharge. If you deposit to a disabled collection account, the company cannot check the collection and will not be responsible!',
      name: 'depositHintTextClearInfo',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextMaxExceed(dynamic no) {
    return Intl.message(
      '$no exceeds the online payment limit for a single day or a single large deposit, other deposit methods can be used',
      name: 'depositHintTextMaxExceed',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextFailure(dynamic no) {
    return Intl.message(
      '$no If you encounter failures such as failed deposit scanning, please try to refresh and try again, and contact customer service to use another replacement channel',
      name: 'depositHintTextFailure',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextInfo(dynamic no) {
    return Intl.message(
      '$no payment bank and account name, please contact',
      name: 'depositHintTextInfo',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextUnionShortcut(dynamic no) {
    return Intl.message(
      '$no opens a quick function to China UnionPay to make your payment more convenient',
      name: 'depositHintTextUnionShortcut',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextQuickpay(dynamic no) {
    return Intl.message(
      '$no Warm reminder: you need to pay two decimal places for quick payment, and the system will automatically bring in (if you submit 00 for two decimal places, it will not be successful)',
      name: 'depositHintTextQuickpay',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextUnion(dynamic no) {
    return Intl.message(
      '$no want to use UnionPay scan code to pay, as long as you have a UnionPay card starting with card number 62, credit card debit cards can be used.',
      name: 'depositHintTextUnion',
      desc: '',
      args: [no],
    );
  }

  String get depositHintTextUnionA {
    return Intl.message(
      'A. Download the Bank of China App or UnionPay Wallet App on your phone;',
      name: 'depositHintTextUnionA',
      desc: '',
      args: [],
    );
  }

  String get depositHintTextUnionB {
    return Intl.message(
      'B. Log in to the Bank of China Mobile App and use the payment function in the upper right corner or the payment function in the mobile payment module;',
      name: 'depositHintTextUnionB',
      desc: '',
      args: [],
    );
  }

  String get depositHintTextUnionC {
    return Intl.message(
      'C. Enter the QR code page for payment to the merchant, just scan the code with the machine.',
      name: 'depositHintTextUnionC',
      desc: '',
      args: [],
    );
  }

  String depositHintTextAli(dynamic no) {
    return Intl.message(
      '$no Restricted Debit Card and Alipay Balance Payment!',
      name: 'depositHintTextAli',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextLastNum(dynamic no) {
    return Intl.message(
      '$no If the end of the single transaction amount is not 0 (such as: 1000 yuan), it will result in unsuccessful deposit',
      name: 'depositHintTextLastNum',
      desc: '',
      args: [no],
    );
  }

  String depositHintTextLimit(dynamic no) {
    return Intl.message(
      '$no Issuer Limit Solution: Requires the user to call the issuer\'s customer service to request an increase in online transaction limit',
      name: 'depositHintTextLimit',
      desc: '',
      args: [no],
    );
  }

  String get depositMessageFailed {
    return Intl.message(
      'Recharge failed, please try again later or contact customer service',
      name: 'depositMessageFailed',
      desc: '',
      args: [],
    );
  }

  String get depositMessageSuccess {
    return Intl.message(
      'Successful Deposit',
      name: 'depositMessageSuccess',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieQuick0 {
    return Intl.message(
      'Debit Card Teaching',
      name: 'depositNewbieQuick0',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieVirtual0 {
    return Intl.message(
      'Download Link',
      name: 'depositNewbieVirtual0',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieVirtualButton1 {
    return Intl.message(
      'Download the Baobao Payment App',
      name: 'depositNewbieVirtualButton1',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli0 {
    return Intl.message(
      'Alipay to Bank Card Teaching',
      name: 'depositNewbieAli0',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli1 {
    return Intl.message(
      'First open Alipay on your mobile phone and log in, click the [Transfer] function on the motherboard.',
      name: 'depositNewbieAli1',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli2 {
    return Intl.message(
      'Select the [Go to Bank Card] button at the bottom of the transfer page',
      name: 'depositNewbieAli2',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli3 {
    return Intl.message(
      'It is also necessary to fill in [Payee Card Number] == [Banking] == [Payee Name] == [Payment Amount]',
      name: 'depositNewbieAli3',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli4 {
    return Intl.message(
      'After submission, enter Alipay [Payment Password].',
      name: 'depositNewbieAli4',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieAli5 {
    return Intl.message(
      'After the transfer is successful, you can view it in the Alipay bill details, and change the transfer details and arrival time.',
      name: 'depositNewbieAli5',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieUnion0 {
    return Intl.message(
      'UnionPay Payment Tutorial',
      name: 'depositNewbieUnion0',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieUnion1 {
    return Intl.message(
      '1. Download UnionPay Wallet App',
      name: 'depositNewbieUnion1',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieUnion2 {
    return Intl.message(
      '2. Register and log in.',
      name: 'depositNewbieUnion2',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieUnion3 {
    return Intl.message(
      '3. Bind a bank card, select Card Manager → Card List → Add Bank Card → Add a New Card.',
      name: 'depositNewbieUnion3',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieUnion4 {
    return Intl.message(
      'You can add both credit and debit cards',
      name: 'depositNewbieUnion4',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieWechat0 {
    return Intl.message(
      'Code Scan Teaching',
      name: 'depositNewbieWechat0',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieWechat1 {
    return Intl.message(
      '1. Take a payment QR code with a mobile phone.',
      name: 'depositNewbieWechat1',
      desc: '',
      args: [],
    );
  }

  String get depositNewbieWechat2 {
    return Intl.message(
      '2. Then use another mobile phone WeChat to scan the code.',
      name: 'depositNewbieWechat2',
      desc: '',
      args: [],
    );
  }

  String get balanceStatusMaintenance {
    return Intl.message(
      'Maintenance',
      name: 'balanceStatusMaintenance',
      desc: '',
      args: [],
    );
  }

  String get balanceTransferInText {
    return Intl.message(
      'Transfer In',
      name: 'balanceTransferInText',
      desc: '',
      args: [],
    );
  }

  String get balanceTransferOutText {
    return Intl.message(
      'Transfer Out',
      name: 'balanceTransferOutText',
      desc: '',
      args: [],
    );
  }

  String balanceTransferAlertMsg(dynamic value, dynamic value2) {
    return Intl.message(
      'Are you sure of the $value $value2 platform?',
      name: 'balanceTransferAlertMsg',
      desc: '',
      args: [value, value2],
    );
  }

  String get balanceHintTextTitle {
    return Intl.message(
      'Reminder:',
      name: 'balanceHintTextTitle',
      desc: '',
      args: [],
    );
  }

  String get balanceHintText1 {
    return Intl.message(
      '1 Please exit the game or game betting interface before transferring money.',
      name: 'balanceHintText1',
      desc: '',
      args: [],
    );
  }

  String get balanceHintText2 {
    return Intl.message(
      '2 When not participating in the activity, the amount of the indoor transfer cannot be less than 1 yuan, and there is no handling fee for indoor transfer.',
      name: 'balanceHintText2',
      desc: '',
      args: [],
    );
  }

  String get balanceHintText3 {
    return Intl.message(
      '3 If you have a slow internet connection, please wait for a while and don\'t repeat the submission multiple times.',
      name: 'balanceHintText3',
      desc: '',
      args: [],
    );
  }

  String get balanceHintText4 {
    return Intl.message(
      'If the platform amount has not changed after 4 successful transfers, please refresh the platform manually or contact customer service',
      name: 'balanceHintText4',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextTime {
    return Intl.message(
      'Time Interval',
      name: 'flowHeaderTextTime',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextCode {
    return Intl.message(
      'Transaction Code',
      name: 'flowHeaderTextCode',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextType {
    return Intl.message(
      'Type',
      name: 'flowHeaderTextType',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextAmount {
    return Intl.message(
      'Amount',
      name: 'flowHeaderTextAmount',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextMultiple {
    return Intl.message(
      'Multiple',
      name: 'flowHeaderTextMultiple',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextPromo {
    return Intl.message(
      'Cash Offer',
      name: 'flowHeaderTextPromo',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextRequire {
    return Intl.message(
      'Requirement for bet amount',
      name: 'flowHeaderTextRequire',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextCurrent {
    return Intl.message(
      'Current Stake',
      name: 'flowHeaderTextCurrent',
      desc: '',
      args: [],
    );
  }

  String get flowHeaderTextNeed {
    return Intl.message(
      'Remaining capital required',
      name: 'flowHeaderTextNeed',
      desc: '',
      args: [],
    );
  }

  String get agentChartTableSpinner {
    return Intl.message(
      'form',
      name: 'agentChartTableSpinner',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderAccount {
    return Intl.message(
      'Account',
      name: 'agentChartHeaderAccount',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderWager {
    return Intl.message(
      'Bet Amount',
      name: 'agentChartHeaderWager',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderBet {
    return Intl.message(
      'Bet Amount',
      name: 'agentChartHeaderBet',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderValid {
    return Intl.message(
      'Valid bet amount',
      name: 'agentChartHeaderValid',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderPayout {
    return Intl.message(
      'Pay',
      name: 'agentChartHeaderPayout',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderTotalWager {
    return Intl.message(
      'Total Bet Volume',
      name: 'agentChartHeaderTotalWager',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderTotalBet {
    return Intl.message(
      'Total Bet',
      name: 'agentChartHeaderTotalBet',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderTotalValid {
    return Intl.message(
      'Total Valid Amount',
      name: 'agentChartHeaderTotalValid',
      desc: '',
      args: [],
    );
  }

  String get agentChartHeaderTotalPayout {
    return Intl.message(
      'Total Payout',
      name: 'agentChartHeaderTotalPayout',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderMonth {
    return Intl.message(
      'Month',
      name: 'agentCommissionHeaderMonth',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderLowLine {
    return Intl.message(
      'Offline Commission',
      name: 'agentCommissionHeaderLowLine',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderGroup {
    return Intl.message(
      'Group Commission',
      name: 'agentCommissionHeaderGroup',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderAdmin {
    return Intl.message(
      'Administration Fee',
      name: 'agentCommissionHeaderAdmin',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderPlatform {
    return Intl.message(
      'Platform fee',
      name: 'agentCommissionHeaderPlatform',
      desc: '',
      args: [],
    );
  }

  String get agentCommissionHeaderReceive {
    return Intl.message(
      'Actual Commission',
      name: 'agentCommissionHeaderReceive',
      desc: '',
      args: [],
    );
  }

  String wheelTextTitleCount(dynamic num) {
    return Intl.message(
      'Cumulative Lucky Draw: $num times',
      name: 'wheelTextTitleCount',
      desc: '',
      args: [num],
    );
  }

  String get wheelTextTitlePrize {
    return Intl.message(
      'Winning History',
      name: 'wheelTextTitlePrize',
      desc: '',
      args: [],
    );
  }

  String get wheelTextTitleRecord {
    return Intl.message(
      'Operation Record',
      name: 'wheelTextTitleRecord',
      desc: '',
      args: [],
    );
  }

  String get wheelTextTitleGet {
    return Intl.message(
      'Get spins',
      name: 'wheelTextTitleGet',
      desc: '',
      args: [],
    );
  }

  String get wheelTextTitleRules {
    return Intl.message(
      'Event Rules',
      name: 'wheelTextTitleRules',
      desc: '',
      args: [],
    );
  }

  String get wheelOrderTableTextTime {
    return Intl.message(
      'Time',
      name: 'wheelOrderTableTextTime',
      desc: '',
      args: [],
    );
  }

  String get wheelOrderTableTextPrize {
    return Intl.message(
      'Awards',
      name: 'wheelOrderTableTextPrize',
      desc: '',
      args: [],
    );
  }

  String get wheelOrderTableTextStatus {
    return Intl.message(
      'Dispatch Status',
      name: 'wheelOrderTableTextStatus',
      desc: '',
      args: [],
    );
  }

  String get wheelRecordTableTextTime {
    return Intl.message(
      'Time',
      name: 'wheelRecordTableTextTime',
      desc: '',
      args: [],
    );
  }

  String get wheelRecordTableTextOperate {
    return Intl.message(
      'Operation',
      name: 'wheelRecordTableTextOperate',
      desc: '',
      args: [],
    );
  }

  String get wheelRecordTableTextCount {
    return Intl.message(
      'Number of times',
      name: 'wheelRecordTableTextCount',
      desc: '',
      args: [],
    );
  }

  String get wheelRecordTableTextContent {
    return Intl.message(
      'Content',
      name: 'wheelRecordTableTextContent',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextContent {
    return Intl.message(
      'Content',
      name: 'wheelApplyTableTextContent',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextProgress {
    return Intl.message(
      'Progress',
      name: 'wheelApplyTableTextProgress',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextCount {
    return Intl.message(
      'Number of rotations',
      name: 'wheelApplyTableTextCount',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextStatus {
    return Intl.message(
      'Status',
      name: 'wheelApplyTableTextStatus',
      desc: '',
      args: [],
    );
  }

  String wheelTableMessageEmpty(dynamic msg) {
    return Intl.message(
      'No records found for $msg',
      name: 'wheelTableMessageEmpty',
      desc: '',
      args: [msg],
    );
  }

  String get wheelOrderTableTextStatus0 {
    return Intl.message(
      'Not dispatched',
      name: 'wheelOrderTableTextStatus0',
      desc: '',
      args: [],
    );
  }

  String get wheelOrderTableTextStatus1 {
    return Intl.message(
      'Dispatched',
      name: 'wheelOrderTableTextStatus1',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextStatus0 {
    return Intl.message(
      'Not reached',
      name: 'wheelApplyTableTextStatus0',
      desc: '',
      args: [],
    );
  }

  String get wheelApplyTableTextStatus1 {
    return Intl.message(
      'Achieved',
      name: 'wheelApplyTableTextStatus1',
      desc: '',
      args: [],
    );
  }

  String get storeTextTitleProduct {
    return Intl.message(
      'Redeem Product',
      name: 'storeTextTitleProduct',
      desc: '',
      args: [],
    );
  }

  String get storeTextTitleRule {
    return Intl.message(
      'Exchange Rules',
      name: 'storeTextTitleRule',
      desc: '',
      args: [],
    );
  }

  String get storeTextTitleRecord {
    return Intl.message(
      'Point Record',
      name: 'storeTextTitleRecord',
      desc: '',
      args: [],
    );
  }

  String get storeTextTitlePoint {
    return Intl.message(
      'Mallpoints:',
      name: 'storeTextTitlePoint',
      desc: '',
      args: [],
    );
  }

  String get storeTextItemHint {
    return Intl.message(
      'Limited to a limited number',
      name: 'storeTextItemHint',
      desc: '',
      args: [],
    );
  }

  String storeTextItemPoint(dynamic value) {
    return Intl.message(
      '$value points',
      name: 'storeTextItemPoint',
      desc: '',
      args: [value],
    );
  }

  String get storeTextItemButton {
    return Intl.message(
      'Redeem Now',
      name: 'storeTextItemButton',
      desc: '',
      args: [],
    );
  }

  String get storeRuleTableHeader {
    return Intl.message(
      'You can get a points table for every 100 yuan of valid bets',
      name: 'storeRuleTableHeader',
      desc: '',
      args: [],
    );
  }

  String storeRuleTableTitle(dynamic value) {
    return Intl.message(
      'Each platform $value',
      name: 'storeRuleTableTitle',
      desc: '',
      args: [value],
    );
  }

  String get storeRecordSpinnerTitle1 {
    return Intl.message(
      'Show',
      name: 'storeRecordSpinnerTitle1',
      desc: '',
      args: [],
    );
  }

  String get storeRecordSpinnerTitle2 {
    return Intl.message(
      'item',
      name: 'storeRecordSpinnerTitle2',
      desc: '',
      args: [],
    );
  }

  String get storeRecordFieldHint {
    return Intl.message(
      'Please enter a product name',
      name: 'storeRecordFieldHint',
      desc: '',
      args: [],
    );
  }

  String get storeRecordButtonTitle {
    return Intl.message(
      'Search',
      name: 'storeRecordButtonTitle',
      desc: '',
      args: [],
    );
  }

  String get storeRecordTableTitleNo {
    return Intl.message(
      'Order Number',
      name: 'storeRecordTableTitleNo',
      desc: '',
      args: [],
    );
  }

  String get storeRecordTableTitleProduct {
    return Intl.message(
      'Product',
      name: 'storeRecordTableTitleProduct',
      desc: '',
      args: [],
    );
  }

  String get storeRecordTableTitlePoint {
    return Intl.message(
      'Integral',
      name: 'storeRecordTableTitlePoint',
      desc: '',
      args: [],
    );
  }

  String get storeRecordTableTitleDate {
    return Intl.message(
      'Date',
      name: 'storeRecordTableTitleDate',
      desc: '',
      args: [],
    );
  }

  String get storeRecordTableTitleState {
    return Intl.message(
      'State',
      name: 'storeRecordTableTitleState',
      desc: '',
      args: [],
    );
  }

  String get storeProductWindowTitle {
    return Intl.message(
      'Member Redemption',
      name: 'storeProductWindowTitle',
      desc: '',
      args: [],
    );
  }

  String get storeProductWindowTextRemain {
    return Intl.message(
      'Remaining Quantity',
      name: 'storeProductWindowTextRemain',
      desc: '',
      args: [],
    );
  }

  String get storeProductWindowHint1 {
    return Intl.message(
      'Limited number, while stocks last',
      name: 'storeProductWindowHint1',
      desc: '',
      args: [],
    );
  }

  String get storeProductWindowHint2 {
    return Intl.message(
      'Use per branch',
      name: 'storeProductWindowHint2',
      desc: '',
      args: [],
    );
  }

  String get storeProductWindowHint3 {
    return Intl.message(
      'Point Exchange',
      name: 'storeProductWindowHint3',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowTextPoint {
    return Intl.message(
      'Accumulated Points:',
      name: 'storeRequestWindowTextPoint',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowTitle {
    return Intl.message(
      'Recipient Information',
      name: 'storeRequestWindowTitle',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowFieldTitleName {
    return Intl.message(
      'Name',
      name: 'storeRequestWindowFieldTitleName',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowFieldTitlePhone {
    return Intl.message(
      'Phone',
      name: 'storeRequestWindowFieldTitlePhone',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowFieldTitlePostno {
    return Intl.message(
      'Postcode',
      name: 'storeRequestWindowFieldTitlePostno',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowFieldTitleArea {
    return Intl.message(
      'Area',
      name: 'storeRequestWindowFieldTitleArea',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowFieldTitleAddress {
    return Intl.message(
      'Address',
      name: 'storeRequestWindowFieldTitleAddress',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowSpinnerHint {
    return Intl.message(
      'Please select',
      name: 'storeRequestWindowSpinnerHint',
      desc: '',
      args: [],
    );
  }

  String get storeRequestWindowButton {
    return Intl.message(
      'OK to send',
      name: 'storeRequestWindowButton',
      desc: '',
      args: [],
    );
  }

  String get transferViewTitleOut {
    return Intl.message(
      'Transfer Out',
      name: 'transferViewTitleOut',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale('en', ''), Locale('zh', ''),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}