# Module Utilities

To use custom module utilities in an Ansible playbook, you must place shared Python or PowerShell code in this directory. When Ansible executes a playbook, it automatically merges files from this directory into the `ansible.module_utils` namespace.

You can then import these utilities into your custom modules using the standard Python import syntax, such as `from ansible.module_utils.my_shared_code import MySharedCodeClient`.

**Note: Module utilities may only `import` from `ansible.module_utils.*`; importing from other parts of the ansible namespace is not supported and may fail silently on remote targets.