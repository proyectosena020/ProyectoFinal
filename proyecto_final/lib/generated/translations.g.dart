/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 388 (194 per locale)
///
/// Built on 2023-11-07 at 14:09 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _TranslationsEn> {
	en(languageCode: 'en', build: _TranslationsEn.build),
	es(languageCode: 'es', build: _TranslationsEs.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _TranslationsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_TranslationsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _TranslationsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _TranslationsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_TranslationsEn get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _TranslationsEn implements BaseTranslations<AppLocale, _TranslationsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsMainEn main = _TranslationsMainEn._(_root);
	late final _TranslationsLenguageEn lenguage = _TranslationsLenguageEn._(_root);
	late final _TranslationsCardsEn cards = _TranslationsCardsEn._(_root);
	late final _TranslationsMyActiveReservationsEn myActiveReservations = _TranslationsMyActiveReservationsEn._(_root);
	late final _TranslationsReservaCancelEn reservaCancel = _TranslationsReservaCancelEn._(_root);
	late final _TranslationsActiveReservationsEn activeReservations = _TranslationsActiveReservationsEn._(_root);
	late final _TranslationsReservationsCompletedEn reservationsCompleted = _TranslationsReservationsCompletedEn._(_root);
	late final _TranslationsPaymentsEn payments = _TranslationsPaymentsEn._(_root);
	late final _TranslationsFinesEn fines = _TranslationsFinesEn._(_root);
	late final _TranslationsSiteEn site = _TranslationsSiteEn._(_root);
	String get paymentsReceived => 'Payments received';
	String get dateFiled => 'Date Filed';
	String get activeReservationsForMySites => 'Active reservations for my sites';
	String get FromMySites => 'Canceled reservations from my sites';
	String get pendingReservationsForMySites => 'Pending reservations for my sites';
	String get completedReservationsForMySites => 'Completed reservations for my sites';
	String get allSites => 'All sites';
	String get reservationPayments => 'Reservation Payments';
  String get allPaymentsMadeToHosts => 'All payments made to hosts';
	String get epafines => 'Fines';
	String get delete => 'Delete';
	late final _TranslationsListUserEn listUser = _TranslationsListUserEn._(_root);
  String get allReservationsActive => 'All reservations active';
  String get allCompletedReservations => 'All Complete Reservations';
	String get allReservationsCanceled => 'All reservations canceled';
	String get allPendingReservations => 'All Pending Reservations';
	String get search => 'Search';
	late final _TranslationsFavoritesEn favorites = _TranslationsFavoritesEn._(_root);
	late final _TranslationsCommentsEn comments = _TranslationsCommentsEn._(_root);
	late final _TranslationsCategoriesOneEn categoriesOne = _TranslationsCategoriesOneEn._(_root);
	late final _TranslationsLoginEn login = _TranslationsLoginEn._(_root);
	late final _TranslationsRegisterMainEn registerMain = _TranslationsRegisterMainEn._(_root);
	late final _TranslationsInfoUserEn infoUser = _TranslationsInfoUserEn._(_root);
	late final _TranslationsSplashEn splash = _TranslationsSplashEn._(_root);
	late final _TranslationsHomeSitesEn home_sites = _TranslationsHomeSitesEn._(_root);
}

// Path: main
class _TranslationsMainEn {
	_TranslationsMainEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get myProfile => 'My Profile';
	String get categories => 'Categories';
	String get comments => 'Comments';
	String get myChats => 'My Chats';
	String get newSite => 'New Site';
	String get toExplore => 'To Explore';
	String get logout => 'Logout';
	String get darkmode => 'Dark Mode';
	String get clearmode => 'Clear Mode';
}

// Path: lenguage
class _TranslationsLenguageEn {
	_TranslationsLenguageEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get spanish => 'Spanish';
	String get english => 'English';
}

// Path: cards
class _TranslationsCardsEn {
	_TranslationsCardsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get dashboard => 'DashBoard';
	String get myReservations => 'My reservations';
	String get activeReservations => 'Active reservations';
	String get cancelledReservations => 'Cancelled reservations';
	String get pendingReservations => 'Pending reservations';
}

// Path: myActiveReservations
class _TranslationsMyActiveReservationsEn {
	_TranslationsMyActiveReservationsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myActiveReservations => 'My active reservations';
	String get site => 'Site';
	String get user => 'User';
	String get date => 'Date';
	late final _TranslationsMyActiveReservationsUserRservationEn userRservation = _TranslationsMyActiveReservationsUserRservationEn._(_root);
	String get toSee => 'See';
	String get toUpdate => 'Update';
	String get cancel => 'Cancel';
}

// Path: reservaCancel
class _TranslationsReservaCancelEn {
	_TranslationsReservaCancelEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myCanceledReservations => 'My Canceled Reservations';
}

// Path: activeReservations
class _TranslationsActiveReservationsEn {
	_TranslationsActiveReservationsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myActiveReservations => 'My pending reservations';
}

// Path: reservationsCompleted
class _TranslationsReservationsCompletedEn {
	_TranslationsReservationsCompletedEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myReservationsCompleted => 'My Reservations Completed';
}

// Path: payments
class _TranslationsPaymentsEn {
	_TranslationsPaymentsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myPayments => 'My payments';
	String get paymentDate => 'Payment date';
}

// Path: fines
class _TranslationsFinesEn {
	_TranslationsFinesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get myFines => 'My fines';
	String get reservation => 'Reservation';
	String get worth => 'Worth';
	String get site => 'Farm stay room';
}

// Path: site
class _TranslationsSiteEn {
	_TranslationsSiteEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get mySites => 'My sites';
	String get nights => 'Night';
}

// Path: listUser
class _TranslationsListUserEn {
	_TranslationsListUserEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get allUsers => 'All users';
	String get name => 'Name';
	String get email => 'Email';
	String get rol => 'Role';
	String get admin => 'Admin';
	String get host => 'Host';
}

// Path: favorites
class _TranslationsFavoritesEn {
	_TranslationsFavoritesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get favoriteSites => 'Favorite sites';
}

// Path: comments
class _TranslationsCommentsEn {
	_TranslationsCommentsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get commentsUno => 'Comments';
	String get myComments => 'My comments';
	String get comment => 'Lorem ipsum dolor sit amet consectetur adipiscing elit ultricies integer proin suscipit, eleifend nunc taciti habitant mi fames justo suspendisse accumsan penatibus, facilisis senectus molestie nascetur litora tristique vulputate parturient habitasse dictum. Fringilla vestibulum odio tincidunt commodo porttitor gravida posuere, suspendisse dictumst nulla maecenas taciti per diam ut, enim leo vivamus sodales libero porta. Cubilia sem augue neque tortor cras odio proin molestie habitasse magna iaculis ultrices, lobortis mattis arcu lacus metus eu ullamcorper aliquet etiam curae magnis.';
	String get site => 'Site: The girl\'s cabin';
	String get cleaning => 'Cleaning: ';
	String get communication => 'Communication: ';
	String get arrival => 'Arrival: ';
	String get reliability => 'Reliability: ';
	String get location => 'Location: ';
	String get price => 'Precio: ';
	String get allCommets => 'All comments';
	String get commentsTwo => 'Comment: ';
}

// Path: categoriesOne
class _TranslationsCategoriesOneEn {
	_TranslationsCategoriesOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get categories => 'Categories';
	late final _TranslationsCategoriesOneCategoryEn category = _TranslationsCategoriesOneCategoryEn._(_root);
}

// Path: login
class _TranslationsLoginEn {
	_TranslationsLoginEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign In';
	String get checkUp => 'Sign up';
	String get login => 'Login';
	String get textOne => 'Travel in Style, Dream Destinations within Your Reach';
	String get email => 'Email';
	String get password => 'Password';
	String get forgot => 'Forgot password?';
	String get logInButtom => 'Log In';
	String get Continue => 'Continue with';
	String get textTwo => 'Discover unexplored destinations, live unique experiences and create memories that will last a lifetime. Join the travel community and make your travel dreams come true!';
}

// Path: registerMain
class _TranslationsRegisterMainEn {
	_TranslationsRegisterMainEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get citizenshipCard => 'Citizenship Card';
	String get foreignerID => 'Foreigner ID';
	late final _TranslationsRegisterMainBanksEn banks = _TranslationsRegisterMainBanksEn._(_root);
}

// Path: infoUser
class _TranslationsInfoUserEn {
	_TranslationsInfoUserEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get fullname => 'Full name';
	String get documentType => 'Document type';
	String get documentNumber => 'Document number';
	String get phone => 'Phone';
	String get language => 'Language';
	String get description => 'Description';
	String get bank => 'Bank';
	String get bankAccount => 'Bank account';
	String get daviplateNumber => 'Daviplate number';
	String get cellular => 'Cellular';
	String get image => 'Image';
	String get email => 'Email';
	String get password => 'Password';
	String get confirmationPassowrd => 'Confirmation passowrd';
	late final _TranslationsInfoUserPlusEn plus = _TranslationsInfoUserPlusEn._(_root);
	String get addDescription => 'Do you want to add a description?';
	String get textOne => 'What are you waiting for to register, don\'t stop from enjoying the best vacation of your life!!';
	String get message => 'This field is required';
}

// Path: splash
class _TranslationsSplashEn {
	_TranslationsSplashEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsSplashOneEn One = _TranslationsSplashOneEn._(_root);
	late final _TranslationsSplashTwoEn Two = _TranslationsSplashTwoEn._(_root);
	late final _TranslationsSplashThreeEn Three = _TranslationsSplashThreeEn._(_root);
	late final _TranslationsSplashFourEn four = _TranslationsSplashFourEn._(_root);
	late final _TranslationsSplashFiveEn five = _TranslationsSplashFiveEn._(_root);
	String get skip => 'Skip';
}

// Path: home_sites
class _TranslationsHomeSitesEn {
	_TranslationsHomeSitesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsCabEn listCardsCab = _TranslationsHomeSitesListCardsCabEn._(_root);
	late final _TranslationsHomeSitesListCardsMarEn listCardsMar = _TranslationsHomeSitesListCardsMarEn._(_root);
	late final _TranslationsHomeSitesListCardsUnicEn listCardsUnic = _TranslationsHomeSitesListCardsUnicEn._(_root);
	late final _TranslationsHomeSitesListCardsCastEn listCardsCast = _TranslationsHomeSitesListCardsCastEn._(_root);
	late final _TranslationsHomeSitesListCardsMabEn listCardsMab = _TranslationsHomeSitesListCardsMabEn._(_root);
	late final _TranslationsHomeSitesCategoriesEn categories = _TranslationsHomeSitesCategoriesEn._(_root);
	String get text_search => 'Try "Johannesburg"';
}

// Path: myActiveReservations.userRservation
class _TranslationsMyActiveReservationsUserRservationEn {
	_TranslationsMyActiveReservationsUserRservationEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get siteone => 'LA VIE Luxury Cabins - Water by @laviecabin';
}

// Path: categoriesOne.category
class _TranslationsCategoriesOneCategoryEn {
	_TranslationsCategoriesOneCategoryEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get addCategory => 'Add category';
	String get golfCourses => 'Golf courses';
	String get cabins => 'Cabins';
	String get inTheArctic => 'In the Artcic';
	String get camps => 'Camps';
	String get nationalParks => 'National Parks';
	String get bedrooms => 'Bedrooms';
	String get swimmingPools => 'Swimming Pools';
	String get cupulas => 'Cupulas';
	String get ruralHouses => 'Rural Houses';
	String get impressive => 'Impressive';
}

// Path: registerMain.banks
class _TranslationsRegisterMainBanksEn {
	_TranslationsRegisterMainBanksEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get bbva => 'BBVA';
	String get bankOfBogota => 'BANK OF BOGOTA';
	String get banColombia => 'BANCOLOMBIA';
	String get socialBox => 'CAJA SOCIAL';
	String get avVillas => 'AV VILLAS';
	String get west => 'OCCIDENTE';
	String get popular => 'POPULAR';
	String get agrarian => 'AGRARIO';
	String get davivienda => 'DAVIVIENDA';
	String get colpatria => 'COLPATRIA';
}

// Path: infoUser.plus
class _TranslationsInfoUserPlusEn {
	_TranslationsInfoUserPlusEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get selectImage => 'Select Image';
}

// Path: splash.One
class _TranslationsSplashOneEn {
	_TranslationsSplashOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Explore the World';
	String get text => 'Discover unexplored destinations, live unique experiences and create memories that will last a lifetime. Join the travel community and make your travel dreams come true!';
}

// Path: splash.Two
class _TranslationsSplashTwoEn {
	_TranslationsSplashTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Travel in Style';
	String get text => '\'From paradisiacal beaches to exciting metropolises, find inspiration for your next trip and discover exclusive offers that will make your trip unforgettable.';
}

// Path: splash.Three
class _TranslationsSplashThreeEn {
	_TranslationsSplashThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Secret Routes';
	String get text => 'Are you looking for authentic adventures? Navigate our secret routes and unravel the hidden treasures that only the most intrepid travelers know about.';
}

// Path: splash.four
class _TranslationsSplashFourEn {
	_TranslationsSplashFourEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Plan Your Escape';
	String get text => 'Whether it\'s a weekend getaway or a dream trip, our app will help you plan the perfect getaway. Let the adventure begin!';
}

// Path: splash.five
class _TranslationsSplashFiveEn {
	_TranslationsSplashFiveEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Travel Transforms';
	String get text => 'Travel not only changes your destinations, it also changes your perspective. Join our global community of travelers and discover how traveling can transform your life.';
}

// Path: home_sites.listCardsCab
class _TranslationsHomeSitesListCardsCabEn {
	_TranslationsHomeSitesListCardsCabEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsCabSiteOneEn siteOne = _TranslationsHomeSitesListCardsCabSiteOneEn._(_root);
	late final _TranslationsHomeSitesListCardsCabSiteTwoEn siteTwo = _TranslationsHomeSitesListCardsCabSiteTwoEn._(_root);
	late final _TranslationsHomeSitesListCardsCabSiteThreeEn siteThree = _TranslationsHomeSitesListCardsCabSiteThreeEn._(_root);
	late final _TranslationsHomeSitesListCardsCabSiteFourEn siteFour = _TranslationsHomeSitesListCardsCabSiteFourEn._(_root);
}

// Path: home_sites.listCardsMar
class _TranslationsHomeSitesListCardsMarEn {
	_TranslationsHomeSitesListCardsMarEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsMarSiteOneEn siteOne = _TranslationsHomeSitesListCardsMarSiteOneEn._(_root);
	late final _TranslationsHomeSitesListCardsMarSiteTwoEn siteTwo = _TranslationsHomeSitesListCardsMarSiteTwoEn._(_root);
	late final _TranslationsHomeSitesListCardsMarSiteThreeEn siteThree = _TranslationsHomeSitesListCardsMarSiteThreeEn._(_root);
	late final _TranslationsHomeSitesListCardsMarSiteFourEn siteFour = _TranslationsHomeSitesListCardsMarSiteFourEn._(_root);
}

// Path: home_sites.listCardsUnic
class _TranslationsHomeSitesListCardsUnicEn {
	_TranslationsHomeSitesListCardsUnicEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsUnicSiteOneEn siteOne = _TranslationsHomeSitesListCardsUnicSiteOneEn._(_root);
	late final _TranslationsHomeSitesListCardsUnicSiteTwoEn siteTwo = _TranslationsHomeSitesListCardsUnicSiteTwoEn._(_root);
	late final _TranslationsHomeSitesListCardsUnicSiteThreeEn siteThree = _TranslationsHomeSitesListCardsUnicSiteThreeEn._(_root);
}

// Path: home_sites.listCardsCast
class _TranslationsHomeSitesListCardsCastEn {
	_TranslationsHomeSitesListCardsCastEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsCastSiteOneEn siteOne = _TranslationsHomeSitesListCardsCastSiteOneEn._(_root);
	late final _TranslationsHomeSitesListCardsCastSiteTwoEn siteTwo = _TranslationsHomeSitesListCardsCastSiteTwoEn._(_root);
	late final _TranslationsHomeSitesListCardsCastSiteThreeEn siteThree = _TranslationsHomeSitesListCardsCastSiteThreeEn._(_root);
	late final _TranslationsHomeSitesListCardsCastSiteFourEn siteFour = _TranslationsHomeSitesListCardsCastSiteFourEn._(_root);
}

// Path: home_sites.listCardsMab
class _TranslationsHomeSitesListCardsMabEn {
	_TranslationsHomeSitesListCardsMabEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeSitesListCardsMabSiteOneEn siteOne = _TranslationsHomeSitesListCardsMabSiteOneEn._(_root);
	late final _TranslationsHomeSitesListCardsMabSiteTwoEn siteTwo = _TranslationsHomeSitesListCardsMabSiteTwoEn._(_root);
	late final _TranslationsHomeSitesListCardsMabSiteThreeEn siteThree = _TranslationsHomeSitesListCardsMabSiteThreeEn._(_root);
	late final _TranslationsHomeSitesListCardsMabSiteFourEn siteFour = _TranslationsHomeSitesListCardsMabSiteFourEn._(_root);
}

// Path: home_sites.categories
class _TranslationsHomeSitesCategoriesEn {
	_TranslationsHomeSitesCategoriesEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get categoriesOne => 'Cabins';
	String get categoriesTwo => 'Sea View';
	String get categoriesThree => 'Unique';
	String get categoriesFour => 'Castles';
	String get categoriesFive => 'Rooms';
}

// Path: home_sites.listCardsCab.siteOne
class _TranslationsHomeSitesListCardsCabSiteOneEn {
	_TranslationsHomeSitesListCardsCabSiteOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Five-star Hotel';
	String get ubication => 'Bogota';
	String get howToGet => '30 minutes from Bogota';
}

// Path: home_sites.listCardsCab.siteTwo
class _TranslationsHomeSitesListCardsCabSiteTwoEn {
	_TranslationsHomeSitesListCardsCabSiteTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Wooden Cabin';
	String get ubication => 'Arcabuco-Colombia';
	String get howToGet => 'Very close to the urban center';
}

// Path: home_sites.listCardsCab.siteThree
class _TranslationsHomeSitesListCardsCabSiteThreeEn {
	_TranslationsHomeSitesListCardsCabSiteThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Lake View Cabin';
	String get ubication => 'Switzerland';
	String get howToGet => 'Near the city center';
}

// Path: home_sites.listCardsCab.siteFour
class _TranslationsHomeSitesListCardsCabSiteFourEn {
	_TranslationsHomeSitesListCardsCabSiteFourEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Cabin on the Outskirts';
	String get ubication => 'Medellin-Antioquia';
	String get howToGet => 'Half an hour from the urban center';
}

// Path: home_sites.listCardsMar.siteOne
class _TranslationsHomeSitesListCardsMarSiteOneEn {
	_TranslationsHomeSitesListCardsMarSiteOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Venice House';
	String get ubication => 'Venice';
	String get howToGet => 'The best sea view';
}

// Path: home_sites.listCardsMar.siteTwo
class _TranslationsHomeSitesListCardsMarSiteTwoEn {
	_TranslationsHomeSitesListCardsMarSiteTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Waves Hotel';
	String get ubication => 'Barranquilla-Colombia';
	String get howToGet => '15 hours from Bogota';
}

// Path: home_sites.listCardsMar.siteThree
class _TranslationsHomeSitesListCardsMarSiteThreeEn {
	_TranslationsHomeSitesListCardsMarSiteThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'The Olives';
	String get ubication => 'Canada';
	String get howToGet => 'Incredible views';
}

// Path: home_sites.listCardsMar.siteFour
class _TranslationsHomeSitesListCardsMarSiteFourEn {
	_TranslationsHomeSitesListCardsMarSiteFourEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'The Palms';
	String get ubication => 'Taita Lake';
	String get howToGet => '30 minutes from Taita';
}

// Path: home_sites.listCardsUnic.siteOne
class _TranslationsHomeSitesListCardsUnicSiteOneEn {
	_TranslationsHomeSitesListCardsUnicSiteOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Imperial Hotel';
	String get ubication => 'Switzerland';
	String get howToGet => '30 minutes from the urban center';
}

// Path: home_sites.listCardsUnic.siteTwo
class _TranslationsHomeSitesListCardsUnicSiteTwoEn {
	_TranslationsHomeSitesListCardsUnicSiteTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'The Palms';
	String get ubication => 'Taita Lake';
	String get howToGet => '30 minutes from Taita';
}

// Path: home_sites.listCardsUnic.siteThree
class _TranslationsHomeSitesListCardsUnicSiteThreeEn {
	_TranslationsHomeSitesListCardsUnicSiteThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Lake View Cabin';
	String get ubication => 'Switzerland';
	String get howToGet => 'Near the city center';
}

// Path: home_sites.listCardsCast.siteOne
class _TranslationsHomeSitesListCardsCastSiteOneEn {
	_TranslationsHomeSitesListCardsCastSiteOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Lebron Castle';
	String get ubication => 'Russia';
	String get howToGet => '30 minutes from Moscow';
}

// Path: home_sites.listCardsCast.siteTwo
class _TranslationsHomeSitesListCardsCastSiteTwoEn {
	_TranslationsHomeSitesListCardsCastSiteTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'LongVoton Castle';
	String get ubication => 'London';
	String get howToGet => 'Central London';
}

// Path: home_sites.listCardsCast.siteThree
class _TranslationsHomeSitesListCardsCastSiteThreeEn {
	_TranslationsHomeSitesListCardsCastSiteThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Imperial Hotel';
	String get ubication => 'Switzerland';
	String get howToGet => '30 minutes from the urban center';
}

// Path: home_sites.listCardsCast.siteFour
class _TranslationsHomeSitesListCardsCastSiteFourEn {
	_TranslationsHomeSitesListCardsCastSiteFourEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'The Muiscas';
	String get ubication => 'Tota-Colombia';
	String get howToGet => '3 hours from Bogota';
}

// Path: home_sites.listCardsMab.siteOne
class _TranslationsHomeSitesListCardsMabSiteOneEn {
	_TranslationsHomeSitesListCardsMabSiteOneEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Five-star Hotel';
	String get ubication => 'Bogota';
	String get howToGet => '30 minutes from Bogota';
}

// Path: home_sites.listCardsMab.siteTwo
class _TranslationsHomeSitesListCardsMabSiteTwoEn {
	_TranslationsHomeSitesListCardsMabSiteTwoEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Lebron Hotel';
	String get ubication => 'Paris-France';
	String get howToGet => '30 minutes from the city center';
}

// Path: home_sites.listCardsMab.siteThree
class _TranslationsHomeSitesListCardsMabSiteThreeEn {
	_TranslationsHomeSitesListCardsMabSiteThreeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Lake View Cabin';
	String get ubication => 'Switzerland';
	String get howToGet => 'Near the city center';
}

// Path: home_sites.listCardsMab.siteFour
class _TranslationsHomeSitesListCardsMabSiteFourEn {
	_TranslationsHomeSitesListCardsMabSiteFourEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Beautiful';
	String get ubication => 'Arcabuco-Colombia';
	String get howToGet => 'Very close to the urban center';
}

// Path: <root>
class _TranslationsEs implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsMainEs main = _TranslationsMainEs._(_root);
	@override late final _TranslationsLenguageEs lenguage = _TranslationsLenguageEs._(_root);
	@override late final _TranslationsCardsEs cards = _TranslationsCardsEs._(_root);
	@override late final _TranslationsMyActiveReservationsEs myActiveReservations = _TranslationsMyActiveReservationsEs._(_root);
	@override late final _TranslationsReservaCancelEs reservaCancel = _TranslationsReservaCancelEs._(_root);
	@override late final _TranslationsActiveReservationsEs activeReservations = _TranslationsActiveReservationsEs._(_root);
	@override late final _TranslationsReservationsCompletedEs reservationsCompleted = _TranslationsReservationsCompletedEs._(_root);
	@override late final _TranslationsPaymentsEs payments = _TranslationsPaymentsEs._(_root);
	@override late final _TranslationsFinesEs fines = _TranslationsFinesEs._(_root);
	@override late final _TranslationsSiteEs site = _TranslationsSiteEs._(_root);
	@override String get paymentsReceived => 'Pagos recibidos';
	@override String get dateFiled => 'Fecha radicado';
	@override String get activeReservationsForMySites => 'Reservas activas de mis sitios';
	@override String get FromMySites => 'Reservas canceladas de mis sitios';
	@override String get pendingReservationsForMySites => 'Reservas pendientes de mis sitios';
	@override String get completedReservationsForMySites => 'Reservas finalizadas de mis sitios';
	@override String get allSites => 'Todos los sitios';
	@override String get reservationPayments => 'Pagos de reservaciones';
  @override String get allPaymentsMadeToHosts => 'Todos los pagos hechos a anfitriones';
	@override String get epafines => 'Multas';
	@override String get delete => 'Eliminar';
	@override late final _TranslationsListUserEs listUser = _TranslationsListUserEs._(_root);
	@override String get allReservationsCanceled => 'Todas las reservas canceladas';
	@override String get allPendingReservations => 'Todas las reservas pendientes';
  @override String get allReservationsActive => 'Todas las reservas activas';
	@override String get allCompletedReservations => 'Todas las reservas finalizadas';
	@override String get search => 'Buscar';
	@override late final _TranslationsFavoritesEs favorites = _TranslationsFavoritesEs._(_root);
	@override late final _TranslationsCommentsEs comments = _TranslationsCommentsEs._(_root);
	@override late final _TranslationsCategoriesOneEs categoriesOne = _TranslationsCategoriesOneEs._(_root);
	@override late final _TranslationsLoginEs login = _TranslationsLoginEs._(_root);
	@override late final _TranslationsRegisterMainEs registerMain = _TranslationsRegisterMainEs._(_root);
	@override late final _TranslationsInfoUserEs infoUser = _TranslationsInfoUserEs._(_root);
	@override late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	@override late final _TranslationsHomeSitesEs home_sites = _TranslationsHomeSitesEs._(_root);
}

// Path: main
class _TranslationsMainEs implements _TranslationsMainEn {
	_TranslationsMainEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get myProfile => 'Mi Perfil';
	@override String get categories => 'Categorias';
	@override String get comments => 'Comentarios';
	@override String get myChats => 'Mis Chats';
	@override String get newSite => 'Nuevo Sitio';
	@override String get toExplore => 'Explorar';
	@override String get logout => 'Cerrar Sesion';
	@override String get darkmode => 'Modo Oscuro';
	@override String get clearmode => 'Modo Claro';
}

// Path: lenguage
class _TranslationsLenguageEs implements _TranslationsLenguageEn {
	_TranslationsLenguageEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get spanish => 'Español';
	@override String get english => 'Ingles';
}

// Path: cards
class _TranslationsCardsEs implements _TranslationsCardsEn {
	_TranslationsCardsEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Panel de control';
	@override String get myReservations => 'Mis reservaciones';
	@override String get activeReservations => 'Reservaciones activas';
	@override String get cancelledReservations => 'Reservas canceladas';
	@override String get pendingReservations => 'Reservas pendientes';
}

// Path: myActiveReservations
class _TranslationsMyActiveReservationsEs implements _TranslationsMyActiveReservationsEn {
	_TranslationsMyActiveReservationsEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myActiveReservations => 'Mis Reservaciones Activas';
	@override String get site => 'Sitio';
	@override String get user => 'Usuario';
	@override String get date => 'Fecha';
	@override late final _TranslationsMyActiveReservationsUserRservationEs userRservation = _TranslationsMyActiveReservationsUserRservationEs._(_root);
	@override String get toSee => 'Ver';
	@override String get toUpdate => 'Actualizar';
	@override String get cancel => 'Cancelar';
}

// Path: reservaCancel
class _TranslationsReservaCancelEs implements _TranslationsReservaCancelEn {
	_TranslationsReservaCancelEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myCanceledReservations => 'Mis reservas canceladas';
}

// Path: activeReservations
class _TranslationsActiveReservationsEs implements _TranslationsActiveReservationsEn {
	_TranslationsActiveReservationsEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myActiveReservations => 'Mis Reservas pendientes';
}

// Path: reservationsCompleted
class _TranslationsReservationsCompletedEs implements _TranslationsReservationsCompletedEn {
	_TranslationsReservationsCompletedEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myReservationsCompleted => 'Mis Reservas Completadas';
}

// Path: payments
class _TranslationsPaymentsEs implements _TranslationsPaymentsEn {
	_TranslationsPaymentsEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myPayments => 'Mis pagos';
	@override String get paymentDate => 'Fecha de pago';
}

// Path: fines
class _TranslationsFinesEs implements _TranslationsFinesEn {
	_TranslationsFinesEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get myFines => 'Mis multas';
	@override String get reservation => 'Reserva';
	@override String get worth => 'Valor';
	@override String get site => 'Habitación en un estadía en granja';
}

// Path: site
class _TranslationsSiteEs implements _TranslationsSiteEn {
	_TranslationsSiteEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get mySites => 'Mis sitios';
	@override String get nights => 'Noche';
}

// Path: listUser
class _TranslationsListUserEs implements _TranslationsListUserEn {
	_TranslationsListUserEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get allUsers => 'Todos los usuarios';
	@override String get name => 'Nombre';
	@override String get email => 'Correo';
	@override String get rol => 'Rol';
	@override String get admin => 'Administrador';
	@override String get host => 'Anfitrion';
}

// Path: favorites
class _TranslationsFavoritesEs implements _TranslationsFavoritesEn {
	_TranslationsFavoritesEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get favoriteSites => 'Sitios Favoritos';
}

// Path: comments
class _TranslationsCommentsEs implements _TranslationsCommentsEn {
	_TranslationsCommentsEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get commentsUno => 'Comentarios';
	@override String get myComments => 'Mis comentarios';
	@override String get comment => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.';
	@override String get site => 'Site: The girl\'s cabin';
	@override String get cleaning => 'Limpieza: ';
	@override String get communication => 'Comunucacion: ';
	@override String get arrival => 'Llegada: ';
	@override String get reliability => 'Fiabilidad: ';
	@override String get location => 'Ubicacion: ';
	@override String get price => 'Precio: ';
	@override String get allCommets => 'Todos los comentarios';
	@override String get commentsTwo => 'Comentario: ';
}

// Path: categoriesOne
class _TranslationsCategoriesOneEs implements _TranslationsCategoriesOneEn {
	_TranslationsCategoriesOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get categories => 'Categorias';
	@override late final _TranslationsCategoriesOneCategoryEs category = _TranslationsCategoriesOneCategoryEs._(_root);
}

// Path: login
class _TranslationsLoginEs implements _TranslationsLoginEn {
	_TranslationsLoginEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Iniciar sesion';
	@override String get checkUp => 'Registrate';
	@override String get login => 'Acceso';
	@override String get textOne => 'Viaja con Estilo, Destinos de Ensueño a Tu Alcance';
	@override String get email => 'correo electrónico';
	@override String get password => 'Contraseña';
	@override String get forgot => '¿Olvidaste contraseña?';
	@override String get logInButtom => 'Iniciar Sesion';
	@override String get Continue => 'Continuar con';
	@override String get textTwo => 'Descubre destinos inexplorados, vive experiencias únicas y crea recuerdos que durarán toda la vida. ¡Únete a la comunidad viajera y haz realidad tus sueños de viaje!';
}

// Path: registerMain
class _TranslationsRegisterMainEs implements _TranslationsRegisterMainEn {
	_TranslationsRegisterMainEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get citizenshipCard => 'Cedula de Ciudadania';
	@override String get foreignerID => 'Cedula de Extranjeria';
	@override late final _TranslationsRegisterMainBanksEs banks = _TranslationsRegisterMainBanksEs._(_root);
}

// Path: infoUser
class _TranslationsInfoUserEs implements _TranslationsInfoUserEn {
	_TranslationsInfoUserEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get fullname => 'Nombre completo';
	@override String get documentType => 'Tipo documento';
	@override String get documentNumber => 'Numero documento';
	@override String get phone => 'Telefono';
	@override String get language => 'Idioma';
	@override String get description => 'Descripcion';
	@override String get bank => 'Banco';
	@override String get bankAccount => 'Cuenta banco';
	@override String get daviplateNumber => 'Numero daviplata';
	@override String get cellular => 'Celular';
	@override String get image => 'Imagen';
	@override String get email => 'Correo electronico';
	@override String get password => 'Contraseña';
	@override String get confirmationPassowrd => 'Confirmacion Contraseña';
	@override late final _TranslationsInfoUserPlusEs plus = _TranslationsInfoUserPlusEs._(_root);
	@override String get addDescription => '¿Quieres agregar una descripcion?';
	@override String get textOne => 'Que esperas por registrate, no te detengas de disfrutar de las mejores vacaciones de tu vida!!';
	@override String get message => 'Se requiere de este campo';
}

// Path: splash
class _TranslationsSplashEs implements _TranslationsSplashEn {
	_TranslationsSplashEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSplashOneEs One = _TranslationsSplashOneEs._(_root);
	@override late final _TranslationsSplashTwoEs Two = _TranslationsSplashTwoEs._(_root);
	@override late final _TranslationsSplashThreeEs Three = _TranslationsSplashThreeEs._(_root);
	@override late final _TranslationsSplashFourEs four = _TranslationsSplashFourEs._(_root);
	@override late final _TranslationsSplashFiveEs five = _TranslationsSplashFiveEs._(_root);
	@override String get skip => 'omitir';
}

// Path: home_sites
class _TranslationsHomeSitesEs implements _TranslationsHomeSitesEn {
	_TranslationsHomeSitesEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsCabEs listCardsCab = _TranslationsHomeSitesListCardsCabEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMarEs listCardsMar = _TranslationsHomeSitesListCardsMarEs._(_root);
	@override late final _TranslationsHomeSitesListCardsUnicEs listCardsUnic = _TranslationsHomeSitesListCardsUnicEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCastEs listCardsCast = _TranslationsHomeSitesListCardsCastEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMabEs listCardsMab = _TranslationsHomeSitesListCardsMabEs._(_root);
	@override late final _TranslationsHomeSitesCategoriesEs categories = _TranslationsHomeSitesCategoriesEs._(_root);
	@override String get text_search => 'Intenta  "JohannesBurg"';
}

// Path: myActiveReservations.userRservation
class _TranslationsMyActiveReservationsUserRservationEs implements _TranslationsMyActiveReservationsUserRservationEn {
	_TranslationsMyActiveReservationsUserRservationEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get siteone => 'Cabañas de lujo LA VIE - Agua por @laviecabin';
}

// Path: categoriesOne.category
class _TranslationsCategoriesOneCategoryEs implements _TranslationsCategoriesOneCategoryEn {
	_TranslationsCategoriesOneCategoryEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addCategory => 'Añadir categoria';
	@override String get golfCourses => 'Campos de Golf';
	@override String get cabins => 'Cabañas';
	@override String get inTheArctic => 'En el Artico';
	@override String get camps => 'Campamentos';
	@override String get nationalParks => 'Parques nacionales';
	@override String get bedrooms => 'Habitacions';
	@override String get swimmingPools => 'Piscinas';
	@override String get cupulas => 'Cupulas';
	@override String get ruralHouses => 'Casas rurales';
	@override String get impressive => 'Impresionantes';
}

// Path: registerMain.banks
class _TranslationsRegisterMainBanksEs implements _TranslationsRegisterMainBanksEn {
	_TranslationsRegisterMainBanksEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get bbva => 'BBVA';
	@override String get bankOfBogota => 'BANCO DE BOGOTA';
	@override String get banColombia => 'BANCOLOMBIA';
	@override String get socialBox => 'SOCIAL BOX';
	@override String get avVillas => 'AV VILLAS';
	@override String get west => 'WEST';
	@override String get popular => 'POPULAR';
	@override String get agrarian => 'AGRARIAN';
	@override String get davivienda => 'DAVIVIENDA';
	@override String get colpatria => 'COLPATRIA';
}

// Path: infoUser.plus
class _TranslationsInfoUserPlusEs implements _TranslationsInfoUserPlusEn {
	_TranslationsInfoUserPlusEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get selectImage => 'Seleccionar Imagen';
}

// Path: splash.One
class _TranslationsSplashOneEs implements _TranslationsSplashOneEn {
	_TranslationsSplashOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Explora tu Mundo';
	@override String get text => 'Descubre destinos inexplorados, vive experiencias únicas y crea recuerdos que durarán toda la vida. ¡Únase a la comunidad de viajes y haga realidad sus sueños de viajar!';
}

// Path: splash.Two
class _TranslationsSplashTwoEs implements _TranslationsSplashTwoEn {
	_TranslationsSplashTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Viaja con Estilo';
	@override String get text => 'Desde playas paradisíacas hasta apasionantes metrópolis, encuentra inspiración para tu próximo viaje y descubre ofertas exclusivas que harán que tu viaje sea inolvidable.';
}

// Path: splash.Three
class _TranslationsSplashThreeEs implements _TranslationsSplashThreeEn {
	_TranslationsSplashThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Rutas Secretas';
	@override String get text => '¿Buscas auténticas aventuras? Navega por nuestras rutas secretas y descubre los tesoros escondidos que sólo los viajeros más intrépidos conocen.';
}

// Path: splash.four
class _TranslationsSplashFourEs implements _TranslationsSplashFourEn {
	_TranslationsSplashFourEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Planifica Tu Escape';
	@override String get text => 'Ya sea una escapada de fin de semana o un viaje de ensueño, nuestra aplicación te ayudará a planificar la escapada perfecta. ¡Que comience la aventura!';
}

// Path: splash.five
class _TranslationsSplashFiveEs implements _TranslationsSplashFiveEn {
	_TranslationsSplashFiveEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Viajar Transforma';
	@override String get text => 'Viajar no sólo cambia tus destinos, también cambia tu perspectiva. Únase a nuestra comunidad global de viajeros y descubra cómo viajar puede transformar su vida';
}

// Path: home_sites.listCardsCab
class _TranslationsHomeSitesListCardsCabEs implements _TranslationsHomeSitesListCardsCabEn {
	_TranslationsHomeSitesListCardsCabEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsCabSiteOneEs siteOne = _TranslationsHomeSitesListCardsCabSiteOneEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCabSiteTwoEs siteTwo = _TranslationsHomeSitesListCardsCabSiteTwoEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCabSiteThreeEs siteThree = _TranslationsHomeSitesListCardsCabSiteThreeEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCabSiteFourEs siteFour = _TranslationsHomeSitesListCardsCabSiteFourEs._(_root);
}

// Path: home_sites.listCardsMar
class _TranslationsHomeSitesListCardsMarEs implements _TranslationsHomeSitesListCardsMarEn {
	_TranslationsHomeSitesListCardsMarEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsMarSiteOneEs siteOne = _TranslationsHomeSitesListCardsMarSiteOneEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMarSiteTwoEs siteTwo = _TranslationsHomeSitesListCardsMarSiteTwoEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMarSiteThreeEs siteThree = _TranslationsHomeSitesListCardsMarSiteThreeEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMarSiteFourEs siteFour = _TranslationsHomeSitesListCardsMarSiteFourEs._(_root);
}

// Path: home_sites.listCardsUnic
class _TranslationsHomeSitesListCardsUnicEs implements _TranslationsHomeSitesListCardsUnicEn {
	_TranslationsHomeSitesListCardsUnicEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsUnicSiteOneEs siteOne = _TranslationsHomeSitesListCardsUnicSiteOneEs._(_root);
	@override late final _TranslationsHomeSitesListCardsUnicSiteTwoEs siteTwo = _TranslationsHomeSitesListCardsUnicSiteTwoEs._(_root);
	@override late final _TranslationsHomeSitesListCardsUnicSiteThreeEs siteThree = _TranslationsHomeSitesListCardsUnicSiteThreeEs._(_root);
}

// Path: home_sites.listCardsCast
class _TranslationsHomeSitesListCardsCastEs implements _TranslationsHomeSitesListCardsCastEn {
	_TranslationsHomeSitesListCardsCastEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsCastSiteOneEs siteOne = _TranslationsHomeSitesListCardsCastSiteOneEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCastSiteTwoEs siteTwo = _TranslationsHomeSitesListCardsCastSiteTwoEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCastSiteThreeEs siteThree = _TranslationsHomeSitesListCardsCastSiteThreeEs._(_root);
	@override late final _TranslationsHomeSitesListCardsCastSiteFourEs siteFour = _TranslationsHomeSitesListCardsCastSiteFourEs._(_root);
}

// Path: home_sites.listCardsMab
class _TranslationsHomeSitesListCardsMabEs implements _TranslationsHomeSitesListCardsMabEn {
	_TranslationsHomeSitesListCardsMabEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeSitesListCardsMabSiteOneEs siteOne = _TranslationsHomeSitesListCardsMabSiteOneEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMabSiteTwoEs siteTwo = _TranslationsHomeSitesListCardsMabSiteTwoEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMabSiteThreeEs siteThree = _TranslationsHomeSitesListCardsMabSiteThreeEs._(_root);
	@override late final _TranslationsHomeSitesListCardsMabSiteFourEs siteFour = _TranslationsHomeSitesListCardsMabSiteFourEs._(_root);
}

// Path: home_sites.categories
class _TranslationsHomeSitesCategoriesEs implements _TranslationsHomeSitesCategoriesEn {
	_TranslationsHomeSitesCategoriesEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get categoriesOne => 'Cabañas';
	@override String get categoriesTwo => 'Vista al mar';
	@override String get categoriesThree => 'Unicos';
	@override String get categoriesFour => 'Castillos';
	@override String get categoriesFive => 'Habitaciones';
}

// Path: home_sites.listCardsCab.siteOne
class _TranslationsHomeSitesListCardsCabSiteOneEs implements _TranslationsHomeSitesListCardsCabSiteOneEn {
	_TranslationsHomeSitesListCardsCabSiteOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel Cinco estrellas';
	@override String get ubication => 'Bogota';
	@override String get howToGet => 'A 30 minutos de Bogota';
}

// Path: home_sites.listCardsCab.siteTwo
class _TranslationsHomeSitesListCardsCabSiteTwoEs implements _TranslationsHomeSitesListCardsCabSiteTwoEn {
	_TranslationsHomeSitesListCardsCabSiteTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cabaña de madera';
	@override String get ubication => 'Arcabuco-Colombia';
	@override String get howToGet => 'Casco urbano muy cerca';
}

// Path: home_sites.listCardsCab.siteThree
class _TranslationsHomeSitesListCardsCabSiteThreeEs implements _TranslationsHomeSitesListCardsCabSiteThreeEn {
	_TranslationsHomeSitesListCardsCabSiteThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cabaña vista al lago';
	@override String get ubication => 'Suiza';
	@override String get howToGet => 'Cerca al centro de la Ciudad';
}

// Path: home_sites.listCardsCab.siteFour
class _TranslationsHomeSitesListCardsCabSiteFourEs implements _TranslationsHomeSitesListCardsCabSiteFourEn {
	_TranslationsHomeSitesListCardsCabSiteFourEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cabaña a las afueras';
	@override String get ubication => 'Medellin-Antioquia';
	@override String get howToGet => 'Media hora del casco urbano';
}

// Path: home_sites.listCardsMar.siteOne
class _TranslationsHomeSitesListCardsMarSiteOneEs implements _TranslationsHomeSitesListCardsMarSiteOneEn {
	_TranslationsHomeSitesListCardsMarSiteOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Casa venecia';
	@override String get ubication => 'Venesia';
	@override String get howToGet => 'La mejor vista al mar';
}

// Path: home_sites.listCardsMar.siteTwo
class _TranslationsHomeSitesListCardsMarSiteTwoEs implements _TranslationsHomeSitesListCardsMarSiteTwoEn {
	_TranslationsHomeSitesListCardsMarSiteTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel las olas';
	@override String get ubication => 'Barranquilla-Colombia';
	@override String get howToGet => 'A 15 horas de Bogota';
}

// Path: home_sites.listCardsMar.siteThree
class _TranslationsHomeSitesListCardsMarSiteThreeEs implements _TranslationsHomeSitesListCardsMarSiteThreeEn {
	_TranslationsHomeSitesListCardsMarSiteThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Los olivos';
	@override String get ubication => 'Canada';
	@override String get howToGet => 'Vistas increibles';
}

// Path: home_sites.listCardsMar.siteFour
class _TranslationsHomeSitesListCardsMarSiteFourEs implements _TranslationsHomeSitesListCardsMarSiteFourEn {
	_TranslationsHomeSitesListCardsMarSiteFourEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Las palmas';
	@override String get ubication => 'Lago taita';
	@override String get howToGet => 'A 30 minutos de Taita';
}

// Path: home_sites.listCardsUnic.siteOne
class _TranslationsHomeSitesListCardsUnicSiteOneEs implements _TranslationsHomeSitesListCardsUnicSiteOneEn {
	_TranslationsHomeSitesListCardsUnicSiteOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel Imperial';
	@override String get ubication => 'Suiza';
	@override String get howToGet => 'A 30 minutos del casco urbano ';
}

// Path: home_sites.listCardsUnic.siteTwo
class _TranslationsHomeSitesListCardsUnicSiteTwoEs implements _TranslationsHomeSitesListCardsUnicSiteTwoEn {
	_TranslationsHomeSitesListCardsUnicSiteTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Las palmas';
	@override String get ubication => 'Lago taita';
	@override String get howToGet => 'A 30 minutos de Taita';
}

// Path: home_sites.listCardsUnic.siteThree
class _TranslationsHomeSitesListCardsUnicSiteThreeEs implements _TranslationsHomeSitesListCardsUnicSiteThreeEn {
	_TranslationsHomeSitesListCardsUnicSiteThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cabaña vista al lago';
	@override String get ubication => 'Suiza';
	@override String get howToGet => 'Cerca al centro de la Ciudad';
}

// Path: home_sites.listCardsCast.siteOne
class _TranslationsHomeSitesListCardsCastSiteOneEs implements _TranslationsHomeSitesListCardsCastSiteOneEn {
	_TranslationsHomeSitesListCardsCastSiteOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Castillo Lebron';
	@override String get ubication => 'Rusia';
	@override String get howToGet => 'A 30 minutos de Moscu';
}

// Path: home_sites.listCardsCast.siteTwo
class _TranslationsHomeSitesListCardsCastSiteTwoEs implements _TranslationsHomeSitesListCardsCastSiteTwoEn {
	_TranslationsHomeSitesListCardsCastSiteTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Castillo LongVoton';
	@override String get ubication => 'Londres';
	@override String get howToGet => 'Centro de londres';
}

// Path: home_sites.listCardsCast.siteThree
class _TranslationsHomeSitesListCardsCastSiteThreeEs implements _TranslationsHomeSitesListCardsCastSiteThreeEn {
	_TranslationsHomeSitesListCardsCastSiteThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel Imperial';
	@override String get ubication => 'Suiza';
	@override String get howToGet => 'A 30 minutos del casco urbano';
}

// Path: home_sites.listCardsCast.siteFour
class _TranslationsHomeSitesListCardsCastSiteFourEs implements _TranslationsHomeSitesListCardsCastSiteFourEn {
	_TranslationsHomeSitesListCardsCastSiteFourEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Los Muiscas';
	@override String get ubication => 'Tota-Colombia';
	@override String get howToGet => 'A 3 horaas de Bogota';
}

// Path: home_sites.listCardsMab.siteOne
class _TranslationsHomeSitesListCardsMabSiteOneEs implements _TranslationsHomeSitesListCardsMabSiteOneEn {
	_TranslationsHomeSitesListCardsMabSiteOneEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel Cinco estrellas';
	@override String get ubication => 'Bogota';
	@override String get howToGet => 'A 30 minutos de Bogota';
}

// Path: home_sites.listCardsMab.siteTwo
class _TranslationsHomeSitesListCardsMabSiteTwoEs implements _TranslationsHomeSitesListCardsMabSiteTwoEn {
	_TranslationsHomeSitesListCardsMabSiteTwoEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hotel lebron';
	@override String get ubication => 'Paris-Francia';
	@override String get howToGet => 'A 30 minutos del centro';
}

// Path: home_sites.listCardsMab.siteThree
class _TranslationsHomeSitesListCardsMabSiteThreeEs implements _TranslationsHomeSitesListCardsMabSiteThreeEn {
	_TranslationsHomeSitesListCardsMabSiteThreeEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Cabaña vista al lago';
	@override String get ubication => 'Suiza';
	@override String get howToGet => 'Cerca al centro de la Ciudad';
}

// Path: home_sites.listCardsMab.siteFour
class _TranslationsHomeSitesListCardsMabSiteFourEs implements _TranslationsHomeSitesListCardsMabSiteFourEn {
	_TranslationsHomeSitesListCardsMabSiteFourEs._(this._root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hermosa';
	@override String get ubication => 'Arcabuco-Colombia';
	@override String get howToGet => 'Casco urbano muy cerca';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'main.home': return 'Home';
			case 'main.myProfile': return 'My Profile';
			case 'main.categories': return 'Categories';
			case 'main.comments': return 'Comments';
			case 'main.myChats': return 'My Chats';
			case 'main.newSite': return 'New Site';
			case 'main.toExplore': return 'To Explore';
			case 'main.logout': return 'Logout';
			case 'main.darkmode': return 'Dark Mode';
			case 'main.clearmode': return 'Clear Mode';
			case 'lenguage.spanish': return 'Spanish';
			case 'lenguage.english': return 'English';
			case 'cards.dashboard': return 'DashBoard';
			case 'cards.myReservations': return 'My reservations';
			case 'cards.activeReservations': return 'Active reservations';
			case 'cards.cancelledReservations': return 'Cancelled reservations';
			case 'cards.pendingReservations': return 'Pending reservations';
			case 'myActiveReservations.myActiveReservations': return 'My active reservations';
			case 'myActiveReservations.site': return 'Site';
			case 'myActiveReservations.user': return 'User';
			case 'myActiveReservations.date': return 'Date';
			case 'myActiveReservations.userRservation.siteone': return 'LA VIE Luxury Cabins - Water by @laviecabin';
			case 'myActiveReservations.toSee': return 'See';
			case 'myActiveReservations.toUpdate': return 'Update';
			case 'myActiveReservations.cancel': return 'Cancel';
			case 'reservaCancel.myCanceledReservations': return 'My Canceled Reservations';
			case 'activeReservations.myActiveReservations': return 'My pending reservations';
			case 'reservationsCompleted.myReservationsCompleted': return 'My Reservations Completed';
			case 'payments.myPayments': return 'My payments';
			case 'payments.paymentDate': return 'Payment date';
			case 'fines.myFines': return 'My fines';
			case 'fines.reservation': return 'Reservation';
			case 'fines.worth': return 'Worth';
			case 'fines.site': return 'Farm stay room';
			case 'site.mySites': return 'My sites';
			case 'site.nights': return 'Night';
			case 'paymentsReceived': return 'Payments received';
			case 'dateFiled': return 'Date Filed';
			case 'activeReservationsForMySites': return 'Active reservations for my sites';
			case 'FromMySites': return 'Canceled reservations from my sites';
			case 'pendingReservationsForMySites': return 'Pending reservations for my sites';
			case 'completedReservationsForMySites': return 'Completed reservations for my sites';
			case 'allSites': return 'All sites';
			case 'reservationPayments': return 'Reservation Payments';
      case 'allPaymentsMadeToHosts': return 'All payments made to hosts';
			case 'epafines': return 'Fines';
			case 'delete': return 'Delete';
			case 'listUser.allUsers': return 'All users';
			case 'listUser.name': return 'Name';
			case 'listUser.email': return 'Email';
			case 'listUser.rol': return 'Role';
			case 'listUser.admin': return 'Admin';
			case 'listUser.host': return 'Host';
			case 'allReservationsCanceled': return 'All reservations canceled';
			case 'allPendingReservations': return 'All Pending Reservations';
      case 'allReservationsActive': return 'All reservations active';
			case 'allCompletedReservations': return 'All completed reservations';
			case 'search': return 'Search';
			case 'favorites.favoriteSites': return 'Favorite sites';
			case 'comments.commentsUno': return 'Comments';
			case 'comments.myComments': return 'My comments';
			case 'comments.comment': return 'Lorem ipsum dolor sit amet consectetur adipiscing elit ultricies integer proin suscipit, eleifend nunc taciti habitant mi fames justo suspendisse accumsan penatibus, facilisis senectus molestie nascetur litora tristique vulputate parturient habitasse dictum. Fringilla vestibulum odio tincidunt commodo porttitor gravida posuere, suspendisse dictumst nulla maecenas taciti per diam ut, enim leo vivamus sodales libero porta. Cubilia sem augue neque tortor cras odio proin molestie habitasse magna iaculis ultrices, lobortis mattis arcu lacus metus eu ullamcorper aliquet etiam curae magnis.';
			case 'comments.site': return 'Site: The girl\'s cabin';
			case 'comments.cleaning': return 'Cleaning: ';
			case 'comments.communication': return 'Communication: ';
			case 'comments.arrival': return 'Arrival: ';
			case 'comments.reliability': return 'Reliability: ';
			case 'comments.location': return 'Location: ';
			case 'comments.price': return 'Precio: ';
			case 'comments.allCommets': return 'All comments';
			case 'comments.commentsTwo': return 'Comment: ';
			case 'categoriesOne.categories': return 'Categories';
			case 'categoriesOne.category.addCategory': return 'Add category';
			case 'categoriesOne.category.golfCourses': return 'Golf courses';
			case 'categoriesOne.category.cabins': return 'Cabins';
			case 'categoriesOne.category.inTheArctic': return 'In the Artcic';
			case 'categoriesOne.category.camps': return 'Camps';
			case 'categoriesOne.category.nationalParks': return 'National Parks';
			case 'categoriesOne.category.bedrooms': return 'Bedrooms';
			case 'categoriesOne.category.swimmingPools': return 'Swimming Pools';
			case 'categoriesOne.category.cupulas': return 'Cupulas';
			case 'categoriesOne.category.ruralHouses': return 'Rural Houses';
			case 'categoriesOne.category.impressive': return 'Impressive';
			case 'login.signIn': return 'Sign In';
			case 'login.checkUp': return 'Sign up';
			case 'login.login': return 'Login';
			case 'login.textOne': return 'Travel in Style, Dream Destinations within Your Reach';
			case 'login.email': return 'Email';
			case 'login.password': return 'Password';
			case 'login.forgot': return 'Forgot password?';
			case 'login.logInButtom': return 'Log In';
			case 'login.Continue': return 'Continue with';
			case 'login.textTwo': return 'Discover unexplored destinations, live unique experiences and create memories that will last a lifetime. Join the travel community and make your travel dreams come true!';
			case 'registerMain.citizenshipCard': return 'Citizenship Card';
			case 'registerMain.foreignerID': return 'Foreigner ID';
			case 'registerMain.banks.bbva': return 'BBVA';
			case 'registerMain.banks.bankOfBogota': return 'BANK OF BOGOTA';
			case 'registerMain.banks.banColombia': return 'BANCOLOMBIA';
			case 'registerMain.banks.socialBox': return 'CAJA SOCIAL';
			case 'registerMain.banks.avVillas': return 'AV VILLAS';
			case 'registerMain.banks.west': return 'OCCIDENTE';
			case 'registerMain.banks.popular': return 'POPULAR';
			case 'registerMain.banks.agrarian': return 'AGRARIO';
			case 'registerMain.banks.davivienda': return 'DAVIVIENDA';
			case 'registerMain.banks.colpatria': return 'COLPATRIA';
			case 'infoUser.fullname': return 'Full name';
			case 'infoUser.documentType': return 'Document type';
			case 'infoUser.documentNumber': return 'Document number';
			case 'infoUser.phone': return 'Phone';
			case 'infoUser.language': return 'Language';
			case 'infoUser.description': return 'Description';
			case 'infoUser.bank': return 'Bank';
			case 'infoUser.bankAccount': return 'Bank account';
			case 'infoUser.daviplateNumber': return 'Daviplate number';
			case 'infoUser.cellular': return 'Cellular';
			case 'infoUser.image': return 'Image';
			case 'infoUser.email': return 'Email';
			case 'infoUser.password': return 'Password';
			case 'infoUser.confirmationPassowrd': return 'Confirmation passowrd';
			case 'infoUser.plus.selectImage': return 'Select Image';
			case 'infoUser.addDescription': return 'Do you want to add a description?';
			case 'infoUser.textOne': return 'What are you waiting for to register, don\'t stop from enjoying the best vacation of your life!!';
			case 'infoUser.message': return 'This field is required';
			case 'splash.One.name': return 'Explore the World';
			case 'splash.One.text': return 'Discover unexplored destinations, live unique experiences and create memories that will last a lifetime. Join the travel community and make your travel dreams come true!';
			case 'splash.Two.name': return 'Travel in Style';
			case 'splash.Two.text': return '\'From paradisiacal beaches to exciting metropolises, find inspiration for your next trip and discover exclusive offers that will make your trip unforgettable.';
			case 'splash.Three.name': return 'Secret Routes';
			case 'splash.Three.text': return 'Are you looking for authentic adventures? Navigate our secret routes and unravel the hidden treasures that only the most intrepid travelers know about.';
			case 'splash.four.name': return 'Plan Your Escape';
			case 'splash.four.text': return 'Whether it\'s a weekend getaway or a dream trip, our app will help you plan the perfect getaway. Let the adventure begin!';
			case 'splash.five.name': return 'Travel Transforms';
			case 'splash.five.text': return 'Travel not only changes your destinations, it also changes your perspective. Join our global community of travelers and discover how traveling can transform your life.';
			case 'splash.skip': return 'Skip';
			case 'home_sites.listCardsCab.siteOne.name': return 'Five-star Hotel';
			case 'home_sites.listCardsCab.siteOne.ubication': return 'Bogota';
			case 'home_sites.listCardsCab.siteOne.howToGet': return '30 minutes from Bogota';
			case 'home_sites.listCardsCab.siteTwo.name': return 'Wooden Cabin';
			case 'home_sites.listCardsCab.siteTwo.ubication': return 'Arcabuco-Colombia';
			case 'home_sites.listCardsCab.siteTwo.howToGet': return 'Very close to the urban center';
			case 'home_sites.listCardsCab.siteThree.name': return 'Lake View Cabin';
			case 'home_sites.listCardsCab.siteThree.ubication': return 'Switzerland';
			case 'home_sites.listCardsCab.siteThree.howToGet': return 'Near the city center';
			case 'home_sites.listCardsCab.siteFour.name': return 'Cabin on the Outskirts';
			case 'home_sites.listCardsCab.siteFour.ubication': return 'Medellin-Antioquia';
			case 'home_sites.listCardsCab.siteFour.howToGet': return 'Half an hour from the urban center';
			case 'home_sites.listCardsMar.siteOne.name': return 'Venice House';
			case 'home_sites.listCardsMar.siteOne.ubication': return 'Venice';
			case 'home_sites.listCardsMar.siteOne.howToGet': return 'The best sea view';
			case 'home_sites.listCardsMar.siteTwo.name': return 'Waves Hotel';
			case 'home_sites.listCardsMar.siteTwo.ubication': return 'Barranquilla-Colombia';
			case 'home_sites.listCardsMar.siteTwo.howToGet': return '15 hours from Bogota';
			case 'home_sites.listCardsMar.siteThree.name': return 'The Olives';
			case 'home_sites.listCardsMar.siteThree.ubication': return 'Canada';
			case 'home_sites.listCardsMar.siteThree.howToGet': return 'Incredible views';
			case 'home_sites.listCardsMar.siteFour.name': return 'The Palms';
			case 'home_sites.listCardsMar.siteFour.ubication': return 'Taita Lake';
			case 'home_sites.listCardsMar.siteFour.howToGet': return '30 minutes from Taita';
			case 'home_sites.listCardsUnic.siteOne.name': return 'Imperial Hotel';
			case 'home_sites.listCardsUnic.siteOne.ubication': return 'Switzerland';
			case 'home_sites.listCardsUnic.siteOne.howToGet': return '30 minutes from the urban center';
			case 'home_sites.listCardsUnic.siteTwo.name': return 'The Palms';
			case 'home_sites.listCardsUnic.siteTwo.ubication': return 'Taita Lake';
			case 'home_sites.listCardsUnic.siteTwo.howToGet': return '30 minutes from Taita';
			case 'home_sites.listCardsUnic.siteThree.name': return 'Lake View Cabin';
			case 'home_sites.listCardsUnic.siteThree.ubication': return 'Switzerland';
			case 'home_sites.listCardsUnic.siteThree.howToGet': return 'Near the city center';
			case 'home_sites.listCardsCast.siteOne.name': return 'Lebron Castle';
			case 'home_sites.listCardsCast.siteOne.ubication': return 'Russia';
			case 'home_sites.listCardsCast.siteOne.howToGet': return '30 minutes from Moscow';
			case 'home_sites.listCardsCast.siteTwo.name': return 'LongVoton Castle';
			case 'home_sites.listCardsCast.siteTwo.ubication': return 'London';
			case 'home_sites.listCardsCast.siteTwo.howToGet': return 'Central London';
			case 'home_sites.listCardsCast.siteThree.name': return 'Imperial Hotel';
			case 'home_sites.listCardsCast.siteThree.ubication': return 'Switzerland';
			case 'home_sites.listCardsCast.siteThree.howToGet': return '30 minutes from the urban center';
			case 'home_sites.listCardsCast.siteFour.name': return 'The Muiscas';
			case 'home_sites.listCardsCast.siteFour.ubication': return 'Tota-Colombia';
			case 'home_sites.listCardsCast.siteFour.howToGet': return '3 hours from Bogota';
			case 'home_sites.listCardsMab.siteOne.name': return 'Five-star Hotel';
			case 'home_sites.listCardsMab.siteOne.ubication': return 'Bogota';
			case 'home_sites.listCardsMab.siteOne.howToGet': return '30 minutes from Bogota';
			case 'home_sites.listCardsMab.siteTwo.name': return 'Lebron Hotel';
			case 'home_sites.listCardsMab.siteTwo.ubication': return 'Paris-France';
			case 'home_sites.listCardsMab.siteTwo.howToGet': return '30 minutes from the city center';
			case 'home_sites.listCardsMab.siteThree.name': return 'Lake View Cabin';
			case 'home_sites.listCardsMab.siteThree.ubication': return 'Switzerland';
			case 'home_sites.listCardsMab.siteThree.howToGet': return 'Near the city center';
			case 'home_sites.listCardsMab.siteFour.name': return 'Beautiful';
			case 'home_sites.listCardsMab.siteFour.ubication': return 'Arcabuco-Colombia';
			case 'home_sites.listCardsMab.siteFour.howToGet': return 'Very close to the urban center';
			case 'home_sites.categories.categoriesOne': return 'Cabins';
			case 'home_sites.categories.categoriesTwo': return 'Sea View';
			case 'home_sites.categories.categoriesThree': return 'Unique';
			case 'home_sites.categories.categoriesFour': return 'Castles';
			case 'home_sites.categories.categoriesFive': return 'Rooms';
			case 'home_sites.text_search': return 'Try "Johannesburg"';
			default: return null;
		}
	}
}

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'main.home': return 'Inicio';
			case 'main.myProfile': return 'Mi Perfil';
			case 'main.categories': return 'Categorias';
			case 'main.comments': return 'Comentarios';
			case 'main.myChats': return 'Mis Chats';
			case 'main.newSite': return 'Nuevo Sitio';
			case 'main.toExplore': return 'Explorar';
			case 'main.logout': return 'Cerrar Sesion';
			case 'main.darkmode': return 'Modo Oscuro';
			case 'main.clearmode': return 'Modo Claro';
			case 'lenguage.spanish': return 'Español';
			case 'lenguage.english': return 'Ingles';
			case 'cards.dashboard': return 'Panel de control';
			case 'cards.myReservations': return 'Mis reservaciones';
			case 'cards.activeReservations': return 'Reservaciones activas';
			case 'cards.cancelledReservations': return 'Reservas canceladas';
			case 'cards.pendingReservations': return 'Reservas pendientes';
			case 'myActiveReservations.myActiveReservations': return 'Mis Reservaciones Activas';
			case 'myActiveReservations.site': return 'Sitio';
			case 'myActiveReservations.user': return 'Usuario';
			case 'myActiveReservations.date': return 'Fecha';
			case 'myActiveReservations.userRservation.siteone': return 'Cabañas de lujo LA VIE - Agua por @laviecabin';
			case 'myActiveReservations.toSee': return 'Ver';
			case 'myActiveReservations.toUpdate': return 'Actualizar';
			case 'myActiveReservations.cancel': return 'Cancelar';
			case 'reservaCancel.myCanceledReservations': return 'Mis reservas canceladas';
			case 'activeReservations.myActiveReservations': return 'Mis Reservas pendientes';
			case 'reservationsCompleted.myReservationsCompleted': return 'Mis Reservas Completadas';
			case 'payments.myPayments': return 'Mis pagos';
			case 'payments.paymentDate': return 'Fecha de pago';
			case 'fines.myFines': return 'Mis multas';
			case 'fines.reservation': return 'Reserva';
			case 'fines.worth': return 'Valor';
			case 'fines.site': return 'Habitación en un estadía en granja';
			case 'site.mySites': return 'Mis sitios';
			case 'site.nights': return 'Noche';
			case 'paymentsReceived': return 'Pagos recibidos';
			case 'dateFiled': return 'Fecha radicado';
			case 'activeReservationsForMySites': return 'Reservas activas de mis sitios';
			case 'FromMySites': return 'Reservas canceladas de mis sitios';
			case 'pendingReservationsForMySites': return 'Reservas pendientes de mis sitios';
			case 'completedReservationsForMySites': return 'Reservas finalizadas de mis sitios';
			case 'allSites': return 'Todos los sitios';
			case 'reservationPayments': return 'Pagos de reservaciones';
      case 'allPaymentsMadeToHosts': return 'Todos los pagos hechos a anfitriones';
			case 'epafines': return 'Multas';
			case 'delete': return 'Eliminar';
			case 'listUser.allUsers': return 'Todos los usuarios';
			case 'listUser.name': return 'Nombre';
			case 'listUser.email': return 'Correo';
			case 'listUser.rol': return 'Rol';
			case 'listUser.admin': return 'Administrador';
			case 'listUser.host': return 'Anfitrion';
      case 'allReservationsActive': return 'Todas las reservas activas';
			case 'allCompletedReservations': return 'Todas las reservas finalizadas';
			case 'allReservationsCanceled': return 'Todas las reservas canceladas';
			case 'allPendingReservations': return 'Todas las reservas pendientes';
			case 'search': return 'Buscar';
			case 'favorites.favoriteSites': return 'Sitios Favoritos';
			case 'comments.commentsUno': return 'Comentarios';
			case 'comments.myComments': return 'Mis comentarios';
			case 'comments.comment': return 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.';
			case 'comments.site': return 'Site: The girl\'s cabin';
			case 'comments.cleaning': return 'Limpieza: ';
			case 'comments.communication': return 'Comunucacion: ';
			case 'comments.arrival': return 'Llegada: ';
			case 'comments.reliability': return 'Fiabilidad: ';
			case 'comments.location': return 'Ubicacion: ';
			case 'comments.price': return 'Precio: ';
			case 'comments.allCommets': return 'Todos los comentarios';
			case 'comments.commentsTwo': return 'Comentario: ';
			case 'categoriesOne.categories': return 'Categorias';
			case 'categoriesOne.category.addCategory': return 'Añadir categoria';
			case 'categoriesOne.category.golfCourses': return 'Campos de Golf';
			case 'categoriesOne.category.cabins': return 'Cabañas';
			case 'categoriesOne.category.inTheArctic': return 'En el Artico';
			case 'categoriesOne.category.camps': return 'Campamentos';
			case 'categoriesOne.category.nationalParks': return 'Parques nacionales';
			case 'categoriesOne.category.bedrooms': return 'Habitacions';
			case 'categoriesOne.category.swimmingPools': return 'Piscinas';
			case 'categoriesOne.category.cupulas': return 'Cupulas';
			case 'categoriesOne.category.ruralHouses': return 'Casas rurales';
			case 'categoriesOne.category.impressive': return 'Impresionantes';
			case 'login.signIn': return 'Iniciar sesion';
			case 'login.checkUp': return 'Registrate';
			case 'login.login': return 'Acceso';
			case 'login.textOne': return 'Viaja con Estilo, Destinos de Ensueño a Tu Alcance';
			case 'login.email': return 'correo electrónico';
			case 'login.password': return 'Contraseña';
			case 'login.forgot': return '¿Olvidaste contraseña?';
			case 'login.logInButtom': return 'Iniciar Sesion';
			case 'login.Continue': return 'Continuar con';
			case 'login.textTwo': return 'Descubre destinos inexplorados, vive experiencias únicas y crea recuerdos que durarán toda la vida. ¡Únete a la comunidad viajera y haz realidad tus sueños de viaje!';
			case 'registerMain.citizenshipCard': return 'Cedula de Ciudadania';
			case 'registerMain.foreignerID': return 'Cedula de Extranjeria';
			case 'registerMain.banks.bbva': return 'BBVA';
			case 'registerMain.banks.bankOfBogota': return 'BANCO DE BOGOTA';
			case 'registerMain.banks.banColombia': return 'BANCOLOMBIA';
			case 'registerMain.banks.socialBox': return 'SOCIAL BOX';
			case 'registerMain.banks.avVillas': return 'AV VILLAS';
			case 'registerMain.banks.west': return 'WEST';
			case 'registerMain.banks.popular': return 'POPULAR';
			case 'registerMain.banks.agrarian': return 'AGRARIAN';
			case 'registerMain.banks.davivienda': return 'DAVIVIENDA';
			case 'registerMain.banks.colpatria': return 'COLPATRIA';
			case 'infoUser.fullname': return 'Nombre completo';
			case 'infoUser.documentType': return 'Tipo documento';
			case 'infoUser.documentNumber': return 'Numero documento';
			case 'infoUser.phone': return 'Telefono';
			case 'infoUser.language': return 'Idioma';
			case 'infoUser.description': return 'Descripcion';
			case 'infoUser.bank': return 'Banco';
			case 'infoUser.bankAccount': return 'Cuenta banco';
			case 'infoUser.daviplateNumber': return 'Numero daviplata';
			case 'infoUser.cellular': return 'Celular';
			case 'infoUser.image': return 'Imagen';
			case 'infoUser.email': return 'Correo electronico';
			case 'infoUser.password': return 'Contraseña';
			case 'infoUser.confirmationPassowrd': return 'Confirmacion Contraseña';
			case 'infoUser.plus.selectImage': return 'Seleccionar Imagen';
			case 'infoUser.addDescription': return '¿Quieres agregar una descripcion?';
			case 'infoUser.textOne': return 'Que esperas por registrate, no te detengas de disfrutar de las mejores vacaciones de tu vida!!';
			case 'infoUser.message': return 'Se requiere de este campo';
			case 'splash.One.name': return 'Explora tu Mundo';
			case 'splash.One.text': return 'Descubre destinos inexplorados, vive experiencias únicas y crea recuerdos que durarán toda la vida. ¡Únase a la comunidad de viajes y haga realidad sus sueños de viajar!';
			case 'splash.Two.name': return 'Viaja con Estilo';
			case 'splash.Two.text': return 'Desde playas paradisíacas hasta apasionantes metrópolis, encuentra inspiración para tu próximo viaje y descubre ofertas exclusivas que harán que tu viaje sea inolvidable.';
			case 'splash.Three.name': return 'Rutas Secretas';
			case 'splash.Three.text': return '¿Buscas auténticas aventuras? Navega por nuestras rutas secretas y descubre los tesoros escondidos que sólo los viajeros más intrépidos conocen.';
			case 'splash.four.name': return 'Planifica Tu Escape';
			case 'splash.four.text': return 'Ya sea una escapada de fin de semana o un viaje de ensueño, nuestra aplicación te ayudará a planificar la escapada perfecta. ¡Que comience la aventura!';
			case 'splash.five.name': return 'Viajar Transforma';
			case 'splash.five.text': return 'Viajar no sólo cambia tus destinos, también cambia tu perspectiva. Únase a nuestra comunidad global de viajeros y descubra cómo viajar puede transformar su vida';
			case 'splash.skip': return 'omitir';
			case 'home_sites.listCardsCab.siteOne.name': return 'Hotel Cinco estrellas';
			case 'home_sites.listCardsCab.siteOne.ubication': return 'Bogota';
			case 'home_sites.listCardsCab.siteOne.howToGet': return 'A 30 minutos de Bogota';
			case 'home_sites.listCardsCab.siteTwo.name': return 'Cabaña de madera';
			case 'home_sites.listCardsCab.siteTwo.ubication': return 'Arcabuco-Colombia';
			case 'home_sites.listCardsCab.siteTwo.howToGet': return 'Casco urbano muy cerca';
			case 'home_sites.listCardsCab.siteThree.name': return 'Cabaña vista al lago';
			case 'home_sites.listCardsCab.siteThree.ubication': return 'Suiza';
			case 'home_sites.listCardsCab.siteThree.howToGet': return 'Cerca al centro de la Ciudad';
			case 'home_sites.listCardsCab.siteFour.name': return 'Cabaña a las afueras';
			case 'home_sites.listCardsCab.siteFour.ubication': return 'Medellin-Antioquia';
			case 'home_sites.listCardsCab.siteFour.howToGet': return 'Media hora del casco urbano';
			case 'home_sites.listCardsMar.siteOne.name': return 'Casa venecia';
			case 'home_sites.listCardsMar.siteOne.ubication': return 'Venesia';
			case 'home_sites.listCardsMar.siteOne.howToGet': return 'La mejor vista al mar';
			case 'home_sites.listCardsMar.siteTwo.name': return 'Hotel las olas';
			case 'home_sites.listCardsMar.siteTwo.ubication': return 'Barranquilla-Colombia';
			case 'home_sites.listCardsMar.siteTwo.howToGet': return 'A 15 horas de Bogota';
			case 'home_sites.listCardsMar.siteThree.name': return 'Los olivos';
			case 'home_sites.listCardsMar.siteThree.ubication': return 'Canada';
			case 'home_sites.listCardsMar.siteThree.howToGet': return 'Vistas increibles';
			case 'home_sites.listCardsMar.siteFour.name': return 'Las palmas';
			case 'home_sites.listCardsMar.siteFour.ubication': return 'Lago taita';
			case 'home_sites.listCardsMar.siteFour.howToGet': return 'A 30 minutos de Taita';
			case 'home_sites.listCardsUnic.siteOne.name': return 'Hotel Imperial';
			case 'home_sites.listCardsUnic.siteOne.ubication': return 'Suiza';
			case 'home_sites.listCardsUnic.siteOne.howToGet': return 'A 30 minutos del casco urbano ';
			case 'home_sites.listCardsUnic.siteTwo.name': return 'Las palmas';
			case 'home_sites.listCardsUnic.siteTwo.ubication': return 'Lago taita';
			case 'home_sites.listCardsUnic.siteTwo.howToGet': return 'A 30 minutos de Taita';
			case 'home_sites.listCardsUnic.siteThree.name': return 'Cabaña vista al lago';
			case 'home_sites.listCardsUnic.siteThree.ubication': return 'Suiza';
			case 'home_sites.listCardsUnic.siteThree.howToGet': return 'Cerca al centro de la Ciudad';
			case 'home_sites.listCardsCast.siteOne.name': return 'Castillo Lebron';
			case 'home_sites.listCardsCast.siteOne.ubication': return 'Rusia';
			case 'home_sites.listCardsCast.siteOne.howToGet': return 'A 30 minutos de Moscu';
			case 'home_sites.listCardsCast.siteTwo.name': return 'Castillo LongVoton';
			case 'home_sites.listCardsCast.siteTwo.ubication': return 'Londres';
			case 'home_sites.listCardsCast.siteTwo.howToGet': return 'Centro de londres';
			case 'home_sites.listCardsCast.siteThree.name': return 'Hotel Imperial';
			case 'home_sites.listCardsCast.siteThree.ubication': return 'Suiza';
			case 'home_sites.listCardsCast.siteThree.howToGet': return 'A 30 minutos del casco urbano';
			case 'home_sites.listCardsCast.siteFour.name': return 'Los Muiscas';
			case 'home_sites.listCardsCast.siteFour.ubication': return 'Tota-Colombia';
			case 'home_sites.listCardsCast.siteFour.howToGet': return 'A 3 horaas de Bogota';
			case 'home_sites.listCardsMab.siteOne.name': return 'Hotel Cinco estrellas';
			case 'home_sites.listCardsMab.siteOne.ubication': return 'Bogota';
			case 'home_sites.listCardsMab.siteOne.howToGet': return 'A 30 minutos de Bogota';
			case 'home_sites.listCardsMab.siteTwo.name': return 'Hotel lebron';
			case 'home_sites.listCardsMab.siteTwo.ubication': return 'Paris-Francia';
			case 'home_sites.listCardsMab.siteTwo.howToGet': return 'A 30 minutos del centro';
			case 'home_sites.listCardsMab.siteThree.name': return 'Cabaña vista al lago';
			case 'home_sites.listCardsMab.siteThree.ubication': return 'Suiza';
			case 'home_sites.listCardsMab.siteThree.howToGet': return 'Cerca al centro de la Ciudad';
			case 'home_sites.listCardsMab.siteFour.name': return 'Hermosa';
			case 'home_sites.listCardsMab.siteFour.ubication': return 'Arcabuco-Colombia';
			case 'home_sites.listCardsMab.siteFour.howToGet': return 'Casco urbano muy cerca';
			case 'home_sites.categories.categoriesOne': return 'Cabañas';
			case 'home_sites.categories.categoriesTwo': return 'Vista al mar';
			case 'home_sites.categories.categoriesThree': return 'Unicos';
			case 'home_sites.categories.categoriesFour': return 'Castillos';
			case 'home_sites.categories.categoriesFive': return 'Habitaciones';
			case 'home_sites.text_search': return 'Intenta  "JohannesBurg"';
			default: return null;
		}
	}
}
