# The dotfiles

Developer's quick starter on the NEW MacBook.
You can set up your MacBook in just a sec after you bought it.

## Required

- 'OS' : Mac OS Sierra over 10.12.3
- 'Xcode' : over 8.2.1, you must install it from App Store and type 'xcode-select --install' on your terminal.

## How to install dotfiles only

Type the following command on your terminal.

```
curl -fsSL https://raw.githubusercontent.com/keidrun/dotfiles/master/install.sh | bash
```

After that, you need install [Homebrew](https://brew.sh/ "Homebrew"), [peco](https://github.com/peco/peco "peco"), [z](https://github.com/rupa/z "z") and [trash](http://hasseg.org/trash/ "trash") yourselef.

## How to install all application as same as my MacBook

Step1. Install dotfiles.

```
curl -fsSL https://raw.githubusercontent.com/keidrun/dotfiles/master/install.sh | bash
```

Step2. Install [Brewfile](https://github.com/Homebrew/homebrew-bundle "Brewfile").

```
bash ./bin/brew-install-bundle.sh
```

Step3. Install [sdkman](https://github.com/sdkman/sdkman-cli "sdkman").

```
bash ./bin/sdk-install.sh
```

Step4. Install [anyenv](https://github.com/riywo/anyenv "anyenv").

```
bash ./bin/anyenv-install.sh
```

After that, you only enjoy to develop.

## Refresh dotfiles

You can refresh dotfiles and vim as default.

```
bash ./bin/link-dotfiles.sh && bash ./bin/vim-install-packages.sh
```

## Sync Sublime Text settings on Dropbox

On the premise that you put your settings on '~/Dropbox/Sublime/User', you can sync settings after you install Sublime Text and Package Control.

```
bash ./bin/link-sublime-dropbox.sh
```

## NOTE

- You must set your name and your email to 'user.name' and 'user.email' in '.gitconfig'.
- You must set excludesfile's path to 'excludesfile' in '.gitconfig'.
- You can set your GitHub's token to 'HOMEBREW\_GITHUB\_API\_TOKEN' in '.bash_profile'.
- If you are Japanese and use a US keyboard, I recommend [ei-kana](https://ei-kana.appspot.com/ "ei-kana") instead of [karabiner](https://pqrs.org/osx/karabiner/index.html.ja "karabiner").
