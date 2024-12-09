# My dotfiles

Before starting, install the xcode developer tools.

**If you want everything to install then run:**
```sh
sh ./setup.sh {email_address}
```
For work installs run with the work flag:
```sh
sh ./setup.sh {email_address} -w
```

To change the programs installed, adjust the list in `homebrew.sh`.

**After giving the terminal application permissions to make changes you can install parallels:**
```sh
brew install parallels
```

**Manually installed programs through App Store:**
- Bitwarden (so that it can integrate with the browser extensions)
- Notebook (Zoho)

**Config updates:**
Jetbrains Toolbox
Settings -> Tools -> Shell scripts location: set it to this value
/usr/local/bin

Fix issue with Jetbrains Toolbox command line permissions
```shell
sudo chown -R `whoami`:admin /usr/local/bin
```

**To install VS Code Extensions and settings run:**
vscode/install.sh

**Export extensions from VS Code:**
code --list-extensions > extensions.txt

### Notes

If security blocks Facebook URLs then the default yarn setup will not work because it calls Facebook servers for packages. So you'll need to add this to the `.yarnrc` file so that you hit the npm servers directly:

```
registry "https://registry.npmjs.org"
```
