import 'package:args/command_runner.dart';
import 'package:bip39/bip39.dart' as bip39;

class GenerateSeedPhrase extends Command {
  GenerateSeedPhrase() {
    init();
  }

  void init() {
    argParser.addFlag('hel', negatable: false);
  }

  @override
  void run() {
    final seed = bip39.generateMnemonic();

    print('\x1B[32m$seed\x1B[32m');
  }

  @override
  String get description => 'Helps generate a Mnnemoic seed phrase ';

  @override
  String get name => "generate";
}
