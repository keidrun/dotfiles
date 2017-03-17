# The dotfiles

Developer's quick starter on the NEW MacBook.
You can set up your MacBook in just a sec after you bought it.

## Required

<<<<<<< HEAD
- 'OS' Mac OS Sierra over 10.12.3 
- 'Xcode' : You must install it from App Store, and execute 'xcode-select --install' on your terminal.
=======
- 'OS' : Mac OS Sierra over 10.12.3
- 'Xcode' : You must install it from App Store, and type 'xcode-select --install' on your terminal.
>>>>>>> a287ad6... Fix typo.

## How to install dotfiles only

Do the following command on your terminal.

```
curl https://github.com/keidrun/dotfiles/install.sh | bash
```

After that, you need install [Homebrew](https://brew.sh/ "Homebrew"), [peco](https://github.com/peco/peco "peco"), [z](https://github.com/rupa/z "z") and [trash](http://hasseg.org/trash/ "trash") yourselef.

## How to install all application as same as my MacBook

1. Install dotfiles.
```
curl https://github.com/keidrun/dotfiles/install.sh | bash
```

1. Install [Brewfile](https://github.com/Homebrew/homebrew-bundle "Brewfile").
```
bash ./bin/brew-install-bundle.sh
```

1. Install [anyenv](https://github.com/riywo/anyenv "anyenv").
```
bash ./bin/anyenv-install.sh
```

After that, you only enjoy to develop.

## Re-link dotfiles

You can re-link dotfiles  after you remove existing dotfiles on your current directory.

```
bash ./bin/link-dotfiles.sh
```

## NOTE

<<<<<<< HEAD
=======
- You must set your name and your email to 'user.name' and 'user.email' in '.gitconfig'.
- You can set your GitHub's token to 'HOMEBREW\_GITHUB\_API\_TOKEN' in '.bash_profile'.
>>>>>>> a287ad6... Fix typo.
- If you are Japanese and use a US keyboard, I recommend [ei-kana](https://ei-kana.appspot.com/ "ei-kana") instead of [karabiner](https://pqrs.org/osx/karabiner/index.html.ja "karabiner").
