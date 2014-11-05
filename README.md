# base

Configures a base node for James Awesome!

## Supported Platforms

ubuntu: 14.04

## Usage

### base

Include `base` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[base]"
  ]
}
```

### base::users

This class uses the opscode 'users' cookbook to create users with the 'devops' group attribute
from the 'users' data_bag. It is included by base::default. 

In order for this recipe to function there must be at least one (1) user with the 'devops' group 
in the organizations 'users' data_bag.

## License and Authors

Author:: James Awesome <james@wesome.nyc>