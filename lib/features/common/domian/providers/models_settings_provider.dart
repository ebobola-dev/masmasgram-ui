import 'package:masmasgram_ui/features/common/domian/entity/models_settings/models_settings.dart';

class ModelsSettingsProvider {
  ModelsSettings? _value;

  ModelsSettingsProvider({
    ModelsSettings? initValue = null,
  }) : _value = initValue;

  ModelsSettings? get value => _value;

  void set(ModelsSettings? newValue) {
    _value = newValue;
  }
}
