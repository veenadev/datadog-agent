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

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: veena.dev@reancloud.com
