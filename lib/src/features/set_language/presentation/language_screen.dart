import 'package:auto_route/auto_route.dart';
import 'package:mova/src/features/core/infrastructure/extension/localization_extension.dart';
import 'package:mova/src/features/set_language/shared/providers.dart';

import '../../../utils/common_import.dart';

enum Languages { fr, en }

@RoutePage()
class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends ConsumerState<LanguageScreen> {
  Languages? _lg = Languages.fr;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.locale.languageScreenEnglishLabel),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(context.locale.languageScreenFrenchLabel),
            leading: Radio<Languages>(
              value: Languages.fr,
              groupValue: _lg,
              onChanged: (Languages? value) {
                setState(() {
                  _lg = value;
                });
                ref
                    .read(languageNotifierProvider.notifier)
                    .toggleLanguage(_lg.toString());
              },
            ),
          ),
          ListTile(
            title: Text(context.locale.languageScreenEnglishLabel),
            leading: Radio<Languages>(
              value: Languages.en,
              groupValue: _lg,
              onChanged: (Languages? value) {
                setState(() {
                  _lg = value;
                });
                ref
                    .read(languageNotifierProvider.notifier)
                    .toggleLanguage(_lg.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}
