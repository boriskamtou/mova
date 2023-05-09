abstract class CredentialsStorage {
  Future<void> saveCredentials(String key, String? value);
  Future<String?> getCredentials(String key);
  Future<void> clearCredentials();
}
