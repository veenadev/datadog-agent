rad-stackdriver-agent Cookbook
======================
This cookbook will install Stackdriver agent in the Amazon-Linux machine.

Requirements
------------
Amazon Linux machine

Attributes
----------
Provide the Stackdriver API key here:
default['stackdriver-agent']['api_key'] = ''


Usage
-----
#### stackdriver-agent::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `stackdriver-agent` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[stackdriver-agent]"
  ]
}
```


License and Authors
-------------------
Authors: veena.dev@reancloud.com
