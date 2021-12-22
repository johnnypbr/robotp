# robotp

## Prepare Python Environment

This environment uses invoke, then you need invoke installed in your machine:

```
pip install invoke
pip install virtualenv
```

With invoke installed, all can be done using invoke scripts.

Before run other scripts in invoke, configure the environment with the command:

```
invoke env.configure
```

It configures an environment using Python 3.9.

To see all other scripts in invoke, just run:

```
invoke -l
```
### Development Scripts

```bash
# configure the environment
invoke env.configure

# install python packages
invoke install

# execute tests
invoke execute
```
