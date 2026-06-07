# My 💤 LazyVim Configuration

This configuration works with Php (Laravel, Symfony), Python (Django), Go, Kotlin,
Markdown, Javascript/Typescript (Vue, Angular, React) and Flutter/Dart.

## Neovim Installation

Install Neovim 0.12.2 using your package manager or downloading it from
[Neovim website](https://neovim.io/doc/install/) and following these commands:

```bash
tar -xvzf nvim-linux-x86_64.tar.gz
```

```bash
sudo mv nvim-linux-x86_64 /opt
```

Add the following line to ~/.zshrc or ~/.bashrc

```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

Close and open the terminal

## Requirements

1. Install NodeJS and NPM, [I recommend use node version manager (nvm)](https://github.com/nvm-sh/nvm)

2. Install luarocks for compile some plugins

   ```bash
   sudo apt install luarocks
   ```

3. Install ripgrep

   ```bash
   sudo apt install ripgrep
   ```

4. Install fd-find

   ```bash
   sudo apt install fd-find
   ```

5. Install fzf

   ```bash
   sudo apt install fzf
   ```

6. Install Zoxide

   ```bash
   sudo apt install zoxide
   ```

7. Install python3-pip

   ```bash
   sudo apt install python3-pip
   ```

8. Install python3-venv

   ```bash
   sudo apt install python3-venv
   ```

9. Install lazygit (optional)

   ```bash
   sudo apt install lazygit
   ```

10. Install chafa (optional)

    ```bash
    sudo apt install chafa
    ```

11. Install [Flutter](https://docs.flutter.dev/install/manual) for autocomplete
    in dart files

12. Install [jq](https://jqlang.org/download/) for formatting of json files

    ```bash
    sudo apt install jq
    ```

13. Install clang for tree-sitter-cli

    ```bash
    sudo apt install clang
    ```

14. Install tree-sitter-cli (0.26.1 or later) via your package manager,
    **not npm**, or o alternatively use the following command: 2. Restart Neovim.

    ```bash
    cargo install tree-sitter-cli --locked

    ```

15. The terminal [Wezterm](https://github.com/wez/wezterm) because this support true color and undercurl

16. Curl and Git >= 2.19

17. A Nerd Font(v3.0 or greater)

18. You must have PHP installed in your system.

    ```bash
    sudo apt install php-cli php-common php-curl php-zip php-mbstring php-xml php-gd php-pear php-bcmath -y
    ```

## Installing LazyExtras

| Plugins              | Languages             |
| -------------------- | --------------------- |
|                      |                       |
| coding.mini-surround | lang.angular          |
| coding.neogen        | lang.dart             |
| dap.core             | lang.docker           |
| editor.aerial        | lang.git              |
| editor.fzf           | lang.go               |
| editor.mini-move     | lang.json             |
| test.core            | lang.kotlin           |
| util.dot             | lang.markdown         |
| formatting.prettier  | lang.php              |
|                      | lang.python           |
|                      | lang.sql              |
|                      | lang.tailwind         |
|                      | lang.toml             |
|                      | lang.twig             |
|                      | lang.typescript       |
|                      | lang.typescript.vtsls |
|                      | lang.vue              |
|                      | lang.yaml             |

## Installing new LSP servers and other tools (formatters, linters, etc)

1. You need to add lsp servers, formatters, linters, etc to `mason.lua` file
   (You can see the lsp servers in the
   [documentation page](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)).

## Important

This configuration uses Copilot and Opencode for AI, but you can use other plugins
in [this page (ColinKennedy/neovim-ai-plugins)](https://github.com/ColinKennedy/neovim-ai-plugins)
