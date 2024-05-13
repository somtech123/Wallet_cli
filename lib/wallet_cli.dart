import 'package:args/command_runner.dart';
import 'package:wallet_cli/commands/seed.dart';
import 'package:wallet_cli/commands/verify.dart';
import 'package:wallet_cli/utils/string_constant.dart';

void start(List<String> args) {
  final runner = CommandRunner(
      'wallet_cli', 'Manage and generate seed pharse for your crypto wallet')
    ..addCommand(GenerateSeedPhrase())
    ..argParser.addSeparator('\x1B[35m${StringConstant.seperator}\x1B[35m')
    ..addCommand(VerifySeedPhrase());

  runner.run(args);
}
