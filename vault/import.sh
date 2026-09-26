#!/usr/bin/env bash
# Import amy gpg keys that can manage/unlock the vault

set -e

gpg --import vault/gpg-keys/*.asc
