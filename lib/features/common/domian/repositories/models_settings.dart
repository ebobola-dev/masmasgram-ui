import 'package:masmasgram_ui/features/common/domian/entity/models_settings.dart';
import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IModelsSettingsRepository {
  Future<void> initialize();
}

class ModelsSettingsRepository implements IModelsSettingsRepository {
  final ApiClient _aliClient;

  const ModelsSettingsRepository(this._aliClient);

  @override
  Future<ModelsSettings?> initialize() async {
    final modelsSettings = await _aliClient.getModelsSettings();
    return modelsSettings;
  }
}
