# Ansible vault with GPG encryption

This is a harness for using GPG to secure the vault password 

### Vault

Secrets are encrypted using ansible-vault, the passphrase is stored in
`vault/passphrase.asc`.

You need someone already able to decrypt the passphrase to add your GPG key
should your key not be added. You can verify access with `ansible-vault view` or
`./vault/decrypt.sh`.

Editing an existing encrypted file:

```shell
$ ansible-vault edit roles/common/files/secrets.conf
```

Creating new encrypted file:

```shell
$ ansible-vault encrypt my-new-file.conf
```

Listing GPG keys that can open the vault:

```shell
$ ./vault/list.sh
gpg: encrypted with 4096-bit RSA key, ID AAAAAAAAAAAAAAAA, created 2013-04-20
      "Penny Leal <penny@loves-to.dev>"
```

Adding a new gpg key:

```shell
$ vim vault/rekey.sh
# add the GPG key

# re-encrypt the passphrase with all keys in rekey.sh
$ ./vault/rekey.sh
gpg: encrypted with 4096-bit RSA key, ID AAAAAAAAAAAAAAAA, created 2013-04-20
      "Penny Leal <penny@loves-to.dev>"
gpg: encrypted with 4096-bit RSA key, ID BBBBBBBBBBBBBBBB, created 2025-03-20
      "Some Person <user@email.tld>"
```

## Docs

[Ansible Vault](https://docs.ansible.com/projects/ansible/2.9/user_guide/vault.html)
