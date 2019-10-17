# The dotfiles

Developer's quick starter for your NEW MacBook.
You can set up your MacBook quickly and easily after you bought it.

## Prerequisite

- OS: macOS Catalina over 10.15
- Git installed
- Zsh works instead of Bash

## How to install only dotfiles

Type the following command on your terminal then close the terminal.

```bash
curl -fsSL https://raw.githubusercontent.com/keidrun/dotfiles/master/install.sh | bash
```

After that, you need install [Homebrew](https://brew.sh/ 'Homebrew'), [peco](https://github.com/peco/peco 'peco'), [z](https://github.com/rupa/z 'z'), [ccat](https://github.com/jingweno/ccat 'ccat') and [trash](http://hasseg.org/trash/ 'trash') by yourselef.

## How to install all application as same as my cool MacBook Pro

### Step1. Install dotfiles. After installing, close the terminal

```bash
curl -fsSL https://raw.githubusercontent.com/keidrun/dotfiles/master/install.sh | bash
relogin
```

### Step2. Install [Brewfile](https://github.com/Homebrew/homebrew-bundle 'Brewfile')

```bash
cd dotfiles/
sudo bash ./bin/brew-install.sh && bash ./bin/brew-install-bundle.sh
relogin
sudo xcodebuild -license accept
```

NOTE: If you are a Japanese speaker and use a US keyboard, I recommend [ei-kana](https://ei-kana.appspot.com/ 'ei-kana') instead of [karabiner](https://pqrs.org/osx/karabiner/index.html.ja 'karabiner').

### Step3. Install [sdkman](https://github.com/sdkman/sdkman-cli 'sdkman')

```bash
sudo bash ./bin/sdk-install.sh
```

### Step4. Install [anyenv](https://github.com/riywo/anyenv 'anyenv')

```bash
bash ./bin/anyenv-install.sh
relogin
bash ./bin/anyenv-install-*env.sh
relogin
bash ./bin/anyenv-install-ruby.sh && bash ./bin/anyenv-install-python.sh && bash ./bin/anyenv-install-node.sh && bash ./bin/anyenv-install-go.sh
```

### Step5. Install some CLI tools

```bash
bash ./bin/cli-tools-install.sh
```

### Step6. Set up Git and GitHub manually

- Set your name and your email to 'user.name' and 'user.email' in '.gitconfig'.
- Set your GitHub's token to 'HOMEBREW_GITHUB_API_TOKEN' in '.bash_profile'.

### Step7. Set up Visual Studio Code

```bash
bash ./bin/code-setup.sh && bash ./bin/code-install-extensions.sh
```

After that, you just enjoy to develop.

## Reset dotfiles

You can reset dotfiles and vim settings as default.

```bash
bash ./bin/reset-dotfiles.sh && bash ./bin/vim-install-packages.sh
```

NOTE: Existing dotfiles (`.bash_profile`, `.bashrc`, `.gitconfig` and `.vimrc`) will be moved to `backup` directory.

## Changelog

### 1. [Deprecated] Sync Sublime Text settings on Dropbox

I don't longer use Sublime Text. I recommend to use Visual Studio Code instead.

If you'd still like to use Sublime Text, on the promise that you put your settings on '~/Dropbox/SyncSettings/Sublime/User', you can sync settings after you install Sublime Text and Package Control.

```bash
bash ./bin/dropbox-link-sublime3.sh
```

### 2. [Updated] Changed all settings for Zsh

The default interactive shell became zsh on macOS Catalina so every setting was changed for zsh.
