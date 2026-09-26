#!/usr/bin/env bash

set -e

gpg --batch --decrypt vault/passphrase.asc
