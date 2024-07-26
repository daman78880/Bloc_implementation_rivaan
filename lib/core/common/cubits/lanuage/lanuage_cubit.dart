import 'dart:ui';

import 'package:bloc_implementation_rivaan/init_dependencies.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../utils/common_share_preference.dart';
import '../../app_string.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(Locale(MapLocaleList.types.first.languageCode)){
    toSaveLocal();
  }

  void changeLang() async {
    var lag = await CommonSharePreference.getString(
        key: CommonSharePreference.selectedLanguage);
    if (lag == MapLocaleList.types.first.languageCode) {
      changeToJapanese();
    } else {
      changeToEnglish();
    }
  }
  void toSaveLocal() async {
    var lag = await CommonSharePreference.getString(
        key: CommonSharePreference.selectedLanguage);
    if (lag == MapLocaleList.types.first.languageCode) {
      changeToEnglish();
    } else {
      changeToJapanese();
    }
  }

  void changeToEnglish() async {
    var languageCode = MapLocaleList.types.first.languageCode;
    serviceLocator<FlutterLocalization>().translate(languageCode);
    emit(Locale(languageCode));
    await CommonSharePreference.saveString(
      key: CommonSharePreference.selectedLanguage,
      value: languageCode,
    );
  }

  void changeToJapanese() async {
    var languageCode = MapLocaleList.types[1].languageCode;
    serviceLocator<FlutterLocalization>().translate(languageCode);
    emit(Locale(languageCode));
    await CommonSharePreference.saveString(
      key: CommonSharePreference.selectedLanguage,
      value: languageCode,
    );
  }
}