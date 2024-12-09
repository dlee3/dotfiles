# My dotfiles

To all defaults run:
./setup.sh

After giving the terminal application permissions to make changes you can install parallels
```shell
brew install parallels
```

Install Bitwarden through the Apple App Store so that it can integrate with the browser extensions.

Manually installed programs:
Notebook (Zoho)

Jetbrains Toolbox
Settings -> Tools -> Shell scripts location: set it to this value
/usr/local/bin

Fix issue with Jetbrains Toolbox command line permissions
```shell
sudo chown -R `whoami`:admin /usr/local/bin
```

To install VS Code Extensions and settings run:
vscode/install.sh

Export extensions from VS Code:
code --list-extensions > extensions.txt

## ATTENTION

Make sure you replace `{email}` in `.gitconfig` with your email address.

### Notes

If security blocks Facebook URLs then the default yarn setup will not work because it calls Facebook servers for packages. So you'll need to add this to the `.yarnrc` file so that you hit the npm servers directly:

```
registry "https://registry.npmjs.org"
```
