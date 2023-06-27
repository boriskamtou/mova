import 'package:mova/src/l10n/app_localizations.dart';
import 'package:mova/src/utils/common_import.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this);
}
