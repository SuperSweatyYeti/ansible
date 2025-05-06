# This an Ansible playbook to help setup my linux workstation with my customizations

# Required setup

Create .env.yml file and fill with the following environment variables:

```yaml
GIT_USER_NAME: "GitUserName"
GIT_USER_EMAIL: "GitEmailAddress@emailProvider.com"
DESKTOP_ENVIRONMENT: "KDE" # KDE or GNOME

```

# Inventory and ansible.cfg file

Copy the example_ansible.cfg to your own custom ansible.cfg
Same with example_inventory
