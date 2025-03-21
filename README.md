# My NixOS Configuration

> [!CAUTION]
> This repository is not designed to be used by anyone other than myself.

I am new to Nix, NixOS, and GNU/Linux itself. I cannot guarantee best practices; I am just bumbling about until stuff works. Feel free to look around. Something I did might be useful to somebody.

## Features

+ Suboptimal config structure
+ Modularized config files
+ Standalone Home Manager
+ Untested Nvidia and Steam modules
+ VSCodium with nixd Nix language server managed by Home Manager

#### TODO

+ [ ] ~~setup~~ fix Hyprland modules
+ [ ] create a custom Base16 theme
+ [ ] manage Firefox derivatives with Home Manager
+ [ ] test Nvidia and Steam modules
+ [ ] setup OrcaSlicer module
+ [ ] setup Atlas host
+ [ ] setup dev environments
+ [ ] overhaul my modules
+ [ ] setup impermanence

## Config Structure

+ **home-manager** - everything managed by Home Manager
    + **users** - place to put user Home Manager accounts
        + **common** - modules accessible to each user
            + **core** - modules each user requires
            + **optional** - modules each user can opt in to
        + **j** - my personal configuration changes
+ **nixos** - everything related to NixOS
    + **hosts** - computers managed by this repo
        + **common** - modules accessible to each host
            + **core** - modules each host requires
            + **optional** - modules each host can opt in to
            + **users** - place to put user host accounts
        + **nixos** - hosts running NixOS
            + *atlas* - unconfigured HP laptop used for running Klipper firmware
            + *ogre* - unconfigured work computer
            + **stryder** - my personal gaming computer (i7-8700K, Nvidia RTX 4070)
+ **flake.nix** - uses unstable Nixpkgs as default, but allows stable Nixpkgs
+ **template.nix** - a module template

## Credits and Useful Resources

<details>

<summary>Configurations</summary>

+ [Misterio77/nix-starter-configs](https://github.com/Misterio77/nix-starter-configs.git) - The comments are very helpful.
+ [EmergentMind/nix-config](https://github.com/EmergentMind/nix-config.git) - I took inspiration from the structure.
+ [Frost-Phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config.git) - I took inspiration from how the modules are broken down.
+ [XNM1/linux-nixos-hyprland-config-dotfiles](https://github.com/XNM1/linux-nixos-hyprland-config-dotfiles.git) - I took inspiration from how the modules are broken down.

</details>

<details>

<summary>Videos</summary>

+ [NixOS: Everything Everywhere All at Once](https://youtu.be/CwfKlX3rA6E?si=kLvsHnfP-k-Weq6s) - Convincing me to try NixOS.
+ [NixOS Config Guides for Nerds and Other Cool People](https://youtube.com/playlist?list=PL_WcXIXdDWWpuypAEKzZF2b5PijTluxRG&si=iUsgDu18w59NrzD0) - The tutorial series I followed to get this config started.
+ [Ricing Linux Has Never Been Easier | NixOS + Stylix](https://youtu.be/ljHkWgBaQWU?si=CZmFbFHVJJnvLMHU) - Introduction to Stylix.
+ [Easiest Way To Write Nix | Code Editor Setup](https://youtu.be/M_zMoHlbZBY?si=erGxw4dS4HITbgjE) - Introduction to nixd.

</details>

<details>

<summary>Websites</summary>

+ [Nixpkgs Search](https://search.nixos.org/packages) - Useful for looking up Nixpkgs.
+ [MyNixOS](https://mynixos.com/) - Useful for looking up Nixpkg and Home Manager options.
+ [Home Manager Options Appendix](https://nix-community.github.io/home-manager/options.xhtml) - Useful for looking up Home Manager commands not found in MyNixOS. For Example: `programs.vscode.profiles.<name>.extensions`
+ [NixOS Wiki](https://nixos.wiki/wiki/Main_Page) - Useful code snippets for Nixpkg and NixOS options. For instance, the [Nvidia](https://nixos.wiki/wiki/Nvidia) and the [Storage Optimization](https://nixos.wiki/wiki/Storage_optimization#Optimising_the_store) pages.
+ [Stylix User Guide](https://stylix.danth.me/) - Useful for setting up and configuring Stylix.
+ [nixd Editor Setup Guide](https://github.com/nix-community/nixd/blob/main/nixd/docs/editor-setup.md), [nixd LSP Configuration](https://github.com/nix-community/nixd/blob/main/nixd/docs/configuration.md), and [nixd Advanced Settings JSON](https://github.com/nix-community/vscode-nix-ide/blob/main/docs/snippets/advanced-nixd-settings.jsonc) - Useful for setting up nixd LSP in Visual Studio Code (VSCode)/VSCodium.
+ [Declarative GNOME configuration](https://hoverbear.org/blog/declarative-gnome-configuration-in-nixos/) - Great guide for declaratively setting up the GNOME DE.

</details>