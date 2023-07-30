import 'package:auto_route/auto_route.dart';
import '../../core/infrastructure/extension/localization_extension.dart';
import '../shared/providers.dart';

import '../../../utils/common_import.dart';

enum Languages { fr, en }

@RoutePage()
class LanguageScreen extends ConsumerStatefulWidget {
  const LanguageScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends ConsumerState<LanguageScreen> {
  Languages? _lg = Languages.en;

  Future<void> _initialiezValues() async {
    final lang =
        await ref.read(languageNotifierProvider.notifier).getPreferedLanguage();

    if (lang == 'en') {
      setState(() {
        _lg = Languages.en;
      });
    } else {
      setState(() {
        _lg = Languages.fr;
      });
    }
  }

  void _onChangeLocale(Languages? value) {
    setState(() {
      _lg = value;
      ref.read(languageNotifierProvider.notifier).toggleLanguage(_lg!.name);
    });
  }

  @override
  void initState() {
    _initialiezValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.locale.languageScreenTitleLabel),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(context.locale.languageScreenFrenchLabel),
            leading: Radio<Languages>(
              value: Languages.fr,
              groupValue: _lg,
              onChanged: _onChangeLocale,
            ),
          ),
          ListTile(
              title: Text(context.locale.languageScreenEnglishLabel),
              leading: Radio<Languages>(
                value: Languages.en,
                groupValue: _lg,
                onChanged: _onChangeLocale,
              )),
        ],
      ),
    );
  }
}
