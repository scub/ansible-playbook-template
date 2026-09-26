# Lookup Plugins

Lookup plugins are an Ansible-specific extension to the Jinja2 templating language. You can use lookup plugins to access data from outside sources (files, databases, key/value stores, APIs, and other services) within your playbooks, and support exists for developing [custom lookup plugins](https://docs.ansible.com/projects/ansible/latest/dev_guide/developing_plugins.html#developing-lookup-plugins)

Like all templating, lookups execute and are evaluated on the Ansible control machine. Ansible makes the data returned by a lookup plugin available using the standard templating system.