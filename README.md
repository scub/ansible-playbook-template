# Ansible playbook template

## Quick start

Install ansible locally

```bash
apt install -y ansible-core ansible-lint
pip install requests request-ntlm
ansible-galaxy collection install community.general --force
```

Install all libraries

```bash
bundle install
```

Give it a shot

```bash
kitchen converge
```

### Directory layout

```
.
├── roles                                 # Holds the roles used with this playbook
│   └── common                            # Basic template for a role
│       ├── README.md
│       ├── defaults
│       ├── files
│       ├── handlers
│       ├── library
│       ├── lookup_plugins
│       ├── meta
│       ├── module_utils
│       ├── tasks
│       ├── templates
│       └── vars
│
├── test                                  # Test suite to validate the playbook
|   └── integration
|       ├── default                       # Targets the "default" suite
|       │   └── serverspec
|       │       └── default_spec.rb       # Actual spec for the default suite 
|       └── standard                      # Additional suites should share the same structure above
|
├── group_vars                            # Variables assigned to groups through inventory
│   ├── all.yml                           # Holds variables supplied to all hosts
|   └── standard.yml                      # Holds variables supplied only to the "standard" group
|
├── host_vars                             # Store variables assigned to instances by hostname
│   └── standard-hostname.local.yml       # Holds variables supplied only to "standard-hostname.local"
|
├── vault                                 # Stores GPG encrypted vault passphrase
│   └── gpg-keys                          # Holds GPG public keys that can decrypt the vault 
|
├── Gemfile                               # Gemfile for all test-kitchen dependencies
├── Gemfile.lock                          # Lockfile for test-kitchen dependencies
├── hosts                                 # inventory file for all environments
├── README.md                             # Basic readme outlines playbook
├── kitchen.yml                           # test-kitchen configuration defines suites per-group
└── site.yml                              # Playbook definition
```

### Test Kitchen Usage

To test with Test Kitchen:
1. Run `bundle install` to install dependencies
2. Run `kitchen converge` to provision and configure test instances  
3. Run `kitchen verify` to run tests
4. Run `kitchen destroy` to clean up

The Test Kitchen configuration in `kitchen.yml` is designed to reuse the roles and host definitions in your playbook.

### Extra documentation

[Test-Kitchen documentation](https://kitchen.ci/docs/getting-started/introduction/)
[kitchen-docker documentation](https://www.rubydoc.info/gems/kitchen-docker)
[ServerSpec resource types](https://serverspec.org/resource_types.html)
[Ansible's internal "assert" module](https://docs.ansible.com/projects/ansible/latest/collections/ansible/builtin/assert_module.html)