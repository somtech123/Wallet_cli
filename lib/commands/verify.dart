import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:bip39/bip39.dart' as bip39;

class VerifySeedPhrase extends Command {
  VerifySeedPhrase() {
    init();
  }
  void init() {
    argParser.addOption('seed',
        aliases: ['seeds'],
        abbr: 's',
        help:
            '''Pass the seed pharse by doing chain verify --seed="seed pharse"''');
  }

  @override
  void run() {
    if (argResults == null) {
      print('Try running wallet_cli -h');
      exit(1);
    }

    if (argResults!.wasParsed('seed')) {
      final isVerified = bip39.validateMnemonic(argResults!['seed']);

      if (isVerified) {
        var verified = 'Your seed pharse is correct';

        print('\x1B[32m$verified\x1B[32m');

        exit(0);
      } else {
        var err = 'Incorrect seed phrase';

        print('\x1B[31m$err\x1B[31m');

        exit(0);
      }
    }
    print('Pass the seed pharse by doing chain verify --seed="seed pharse');
  }

  @override
  String get description => 'Verify if a seed pharse is correct';

  @override
  String get name => "verify";
}
