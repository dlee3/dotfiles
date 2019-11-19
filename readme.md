# My dotfiles

To all defaults run:
./setup.sh

To install VS Code Extensions and settings run:
vscode/install.sh

Export extensions from VS Code:
code --list-extensions > extensions.txt

<<<<<<< HEAD
# ATTENTION:

Make sure you replace `{email}` in `.gitconfig` with your email address.

# Notes

=======
# Notes

Make sure you replace `{email}` in `.gitconfig` with your email address.

>>>>>>> 2727234e6dfb1a3a301adf8280a02975622a419a
If security blocks Facebook URLs then the default yarn setup will not work because it calls Facebook servers for packages. So you'll need to add this to the `.yarnrc` file so that you hit the npm servers directly:

```
registry "https://registry.npmjs.org"
```
