import 'package:masmasgram_ui/features/common/services/api_client.dart';

abstract class IModelsSettingsRepository {
  Future<dynamic> get();
}

class ModelsSettingsRepository implements IModelsSettingsRepository {
  final ApiClient _aliClient;

  const ModelsSettingsRepository(this._aliClient);

  @override
  Future<dynamic> get() async {
    final modelsSettings = await _aliClient.getModelsSettings();
    return modelsSettings;
  }
}
