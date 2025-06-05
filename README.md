# My NixOS Configuration

> [!CAUTION]
> This repository is not designed to be used by anyone other than myself.

I am new to Nix, NixOS, and GNU/Linux itself. I cannot guarantee best practices; I am just bumbling about until stuff works. Feel free to look around. Something I did might be useful to somebody.

## Features

+ Suboptimal config structure
+ Modularized config files
+ Standalone Home Manager
+ Declarative disk partitioning using Disko

#### TODO

+ [ ] setup OrcaSlicer module
+ [ ] setup Atlas host
+ [ ] setup dev environments
+ [ ] overhaul my modules
+ [ ] setup impermanence

## Config Structure

+ **home-manager** - my programs and dotfiles managed by Home Manager
    + **default.nix** - used to import the desired modules
+ **hosts** - computers managed by this repo
    + **common** - modules accessible to each host
        + **core** - modules each host requires
        + **optional** - modules each host can opt in to
    + **nixos** - hosts running NixOS
        + *atlas* - unconfigured HP laptop used to run Klipper 3D printing firmware
        + *ogre* - unconfigured work computer
        + **stryder** - my personal gaming computer (i7-8700K, Nvidia RTX 4070)
+ **pkgs** - contains packages built from binary or source
+ **templates** - useful templates
+ **wallpapers** - a place for storing wallpapers
+ **flake.nix** - uses unstable Nixpkgs as default, but allows stable Nixpkgs

## Credits and Useful Resources

<details>

<summary>Configurations</summary>

+ [Misterio77/nix-starter-configs](https://github.com/Misterio77/nix-starter-configs.git) - The comments are very helpful.
+ [EmergentMind/nix-config](https://github.com/EmergentMind/nix-config.git) - I took inspiration from the structure.
+ [Frost-Phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config.git) - I took inspiration from how the modules are broken down.
+ [XNM1/linux-nixos-hyprland-config-dotfiles](https://github.com/XNM1/linux-nixos-hyprland-config-dotfiles.git) - I took inspiration from how the modules are broken down.
+ [justinmdickey/publicdots](https://github.com/justinmdickey/publicdots.git) - I copied most of the `hyprlock.conf` file.
+ [4DBug/nix-ansi](https://github.com/4DBug/nix-ansi.git) - The ansi NixOS logo I use for fastfetch. Tip: `ESC[38;2;${r};${g};${b}m` sets the foreground color, and `ESC[48;2;${r};${g};${b}m` sets the background color.
+ [TheDummyUser/nixflakes](https://github.com/TheDummyUser/nixflakes.git) - I copied the bash script from `fastfetch/default.nix`.
+ [adi1090x/rofi](https://github.com/adi1090x/rofi.git) - I copied most of the Rofi theme from `launchers/type-1/style-5.rasi`.

</details>

<details>

<summary>Videos</summary>

+ [NixOS: Everything Everywhere All at Once](https://youtu.be/CwfKlX3rA6E?si=kLvsHnfP-k-Weq6s) - Convincing me to try NixOS.
+ [NixOS Config Guides for Nerds and Other Cool People](https://youtube.com/playlist?list=PL_WcXIXdDWWpuypAEKzZF2b5PijTluxRG&si=iUsgDu18w59NrzD0) - The tutorial series I followed to get this config started.
+ [Ricing Linux Has Never Been Easier | NixOS + Stylix](https://youtu.be/ljHkWgBaQWU?si=CZmFbFHVJJnvLMHU) - Introduction to Stylix.
+ [Easiest Way To Write Nix | Code Editor Setup](https://youtu.be/M_zMoHlbZBY?si=erGxw4dS4HITbgjE) - Introduction to nixd.
+ [Best Way To Manage Project Dependencies | Nix Shells](https://youtu.be/0YBWhSNTgV8?si=-ZEeQvPLavGtx5jy) - Introduction to declarative nix shells.
+ [ NixOS tutorial - Nix Packages](https://youtu.be/CqFcl4BmbN4?si=RD2GMkBToGD8401c) - Useful tutorial showing how to build nix packages from binary and source.

</details>

<details>

<summary>Websites</summary>

+ [Nixpkgs Search](https://search.nixos.org/packages) - Useful for looking up Nixpkgs.
+ [MyNixOS](https://mynixos.com/) - Useful for looking up Nixpkg and Home Manager options.
+ [Home Manager Options Appendix](https://nix-community.github.io/home-manager/options.xhtml) - Useful for looking up Home Manager commands not found in MyNixOS. For Example: `programs.vscode.profiles.<name>.extensions`
+ [Official NixOS Wiki](https://wiki.nixos.org/wiki/NixOS_Wiki) and the [Unofficial NixOS Wiki](https://nixos.wiki/wiki/Main_Page) - Useful code snippets for Nixpkg and NixOS options.
+ [Stylix User Guide](https://stylix.danth.me/) - Useful for setting up and configuring Stylix.
+ [Nixd Editor Setup Guide](https://github.com/nix-community/nixd/blob/main/nixd/docs/editor-setup.md), [Nixd LSP Configuration](https://github.com/nix-community/nixd/blob/main/nixd/docs/configuration.md), and [Nixd Advanced Settings JSON](https://github.com/nix-community/vscode-nix-ide?tab=readme-ov-file#lsp-plugin-support) - Useful for setting up nixd LSP in Visual Studio Code (VSCode)/VSCodium.
+ [Declarative GNOME configuration](https://hoverbear.org/blog/declarative-gnome-configuration-in-nixos/) - Great guide for declaratively setting up the GNOME DE.
+ [Hyprland Wiki](https://wiki.hyprland.org/) - Useful for setting up and configuring Hyprland
+ [How to screenshot only the focused monitor with grim?](https://www.reddit.com/r/hyprland/comments/1cbetfa/comment/mbg9o4y/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button) - I copied `u/nixgang`'s response to this Reddit post.
+ [Fastfetch Configuration Wiki](https://github.com/fastfetch-cli/fastfetch/wiki/Configuration) - Useful for configuring fastfetch.

</details>