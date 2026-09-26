#!/usr/bin/env bash
# List who can decrypt the vault

set -e

gpg --batch --list-packets ./vault/passphrase.asc >/dev/null
