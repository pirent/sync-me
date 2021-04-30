# Debug Ansible on specific task
Register the result of your task to a variable
```
- name: Display nevismeta standalone instance status
  command: nevismeta {{ nevismeta_standalone_instance_name }} status
  register: nevismeta_standalone_status_output
```
Use the debug module, with *var* point the registered variable, and set verbosity level to 0
```
- name: Debug nevismeta standalone instance status
  debug:
    var: nevismeta_standalone_status_output
    verbosity: 0
```