import 'package:flutter/material.dart';
import 'package:myapp/provider/locale_provider.dart';
import 'package:provider/provider.dart';

class LocalePicker extends StatelessWidget {
  const LocalePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Consumer<LocaleProvider>(
      builder: (context, localeProvider, child) {
        return DropdownButton(
          value: localeProvider.locale.languageCode,
          items: localeProvider.countries
              .map((e) => DropdownMenuItem<String>(
                    value: e.code,
                    child: Image.asset(e.url, height: 40, width: 40),
                  ))
              .toList(),
          onChanged: (String? value) {
            localeProvider
                .setLocale(Locale(value ?? localeProvider.countries[0].code));
          },
        );
      },
    ));
  }
}
