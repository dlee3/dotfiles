# My dotfiles

To all defaults run:
./setup.sh

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
