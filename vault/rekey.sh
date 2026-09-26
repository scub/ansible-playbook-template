#!/usr/bin/env bash
# Re-encrypt ansible passphrase key

set -e

# List of gpg keys that can modify the vault
GPG_KEYS=()

RECIPIENTS=""
for key in ${GPG_KEYS[@]}; do RECIPIENTS+="-r $key "; done

gpg --batch --decrypt vault/passphrase.asc | gpg --encrypt --batch --armor --trust-model always \
    $RECIPIENTS \
    --output vault/passphrase.asc.tmp

mv vault/passphrase.asc.tmp vault/passphrase.asc
