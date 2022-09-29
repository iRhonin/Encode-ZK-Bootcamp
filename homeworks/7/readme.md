# Homework 7: Wrap

Warp brings Solidity to StarkNet, making it possible to transpile Ethereum
smart contracts to StarkNet Cairo Contracts.

## Documentation 📖

You can read the documentation [here](https://nethermindeth.github.io/warp/).

## Installation :gear:

### Dependencies

<hr>

- Install command on Ubuntu:

```bash
sudo apt install libz3-dev libgmp3-dev
```

2. Have Python 3.9 installed with the virtualenv ([`venv`](https://docs.python.org/3/library/venv.html)) module in your base env.

<br>

### Warp Installation Method 1:

<hr>
Without any virtual environment activated perform the following in order:

1. Add the warp package from npm.

```bash
yarn global add @nethermindeth/warp
```

2. Ensure the package was added by checking the version number:

```bash
warp version
```

3. Install the dependencies:

```bash
warp install --verbose
```

Use the `--python` flag to pass the path to `python3.9` binary, if the above command complains.

```bash
warp install --python <path/to/python3.9> --verbose
```

4. Test the installation worked by transpiling an example ERC20 contract:

```bash
warp transpile example_contracts/ERC20.sol
```
