# dotfiles

## Getting started
### macos

To get started on macos, first install Homebrew on the target system.
This will also install the necessary xcode packages (like git, make).

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Then, go ahead and clone this repository:
```
cd ~
git clone https://github.com/jantytgat/dotfiles.git
```

Finally, run the bootstrap.sh script