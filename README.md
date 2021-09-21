# macOS terminal setup
This is how I configured my Terminal for comfortable use.
For now it is a bit dirty implementation, but it works perfect.

![New look](screenshot.png?raw=true "New look")

## Brief description of tools used in installation
- [ZSH](http://www.zsh.org) - _shell designed for an interactive use_.
- [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) - _a delightful community-driven framework for managing your zsh configuration._
- [Powerline Shell](https://github.com/banga/powerline-shell) - _a beautiful and useful prompt for shell._
- [speedtest-cli](https://github.com/sivel/speedtest-cli) - _command line interface for testing internet bandwidth using speedtest.net._

## Installing stuff
### ZSH
By default ZSH should be already installed in your macOS system.
Check that by executing 
```bash
zsh --version
```
If version is **5.0** or greater - you are done.

If not - to install zsh execute:
```bash
brew install zsh zsh-completions
```

### Oh-My-Zsh
To install Oh-My-Zsh execute:
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

If it is your first installation of developer tools, macOS will throw error on the previous command and will ask you to install Developer Tools. Do not resist, install it :) And then execute previous command again.

### powerline-shell
Powerline-shell is a beautiful tool what runs on Python.
First of all we need **pip** (Python Packages) installed on a system.
To install pip execute:
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python3 get-pip.py
```

Next is **powerline-shell**.
Currently we use old predefined **powerline-shell** implementation, but it still fully functional and useful under macOS Big Sur. Later we are going to migrate to the latest **powerline-shell** version.
It will be automatically installed when you copy-paste all dot files/folders.

### Beautiful vim
Vim will also be really cool after you copy-pasted all dot files/folders.


## Dot files
Copy dot files (e.g. .aliases, .vim, .functions) to home directory.
Go to cloned repository and then execute:
`cp -r ./dotfiles/ ~/`

## Additional Terminal configuration
- I am using modified version of Basic Terminal profile. Just import `Basic Custom.terminal` file in your Terminal preferences.
- In General tab of you Terminal preferences set “Shells open with” to `/bin/zsh`.

### Make speedtest working
To use `speedtest` command specified in `.aliases`, install `speedtest-cli`:
```bash
sudo pip3 install speedtest-cli
```

## Other commands
For other commands just investigate `.aliases` file and Google :)
