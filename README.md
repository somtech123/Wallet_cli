
# Wallet Cli Manager

This is a command-line interface (CLI) tool written in Dart that helps you create, manage seed phrase, and interact with blockchain and cryptocurrency wallets.


## Features

- Create Seed Phrase: Generate a new mnemonic seed phrase.
- Manage Seed Phrase: Store and manage your mnemonic seed phrases securely.
- Manage Wallet Addresses: Add, remove, and label wallet addresses for easy reference.
- Send Crypto: Send cryptocurrency from your wallet to another address.


## Commands


### Generate Seed Phrase
To generate a new mnemonic seed phrase, use the following command:

```bash
$ dart bin/wallet_cli.dart generate
```
This command will output a new mnemonic seed phrase that can be used to generate a wallet.

### Verify Seed Phrase
To verify if a seed phrase is correct, use the following command:

```bash 
$ dart bin/wallet_cli.dart verify --seed"<seed_phrase>"
```
Replace <seed_phrase> with the seed phrase you want to verify. If the seed phrase is correct, it will output "Your seed phrase is correct"; otherwise, it will output "Incorrect seed phrase".

## ToDo

- Check Wallet balance
- Send Crypto to aother Wallet
- View Transcation history



## Help
if you are stuck you can run this command any time to find your way

```bash
$ dart bin/wallet_cli.dart help  
```

    
