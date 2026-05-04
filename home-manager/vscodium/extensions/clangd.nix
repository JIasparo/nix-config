{ pkgs, ... }:

{
  config = {
    programs.vscodium.profiles."default" = {
      extensions = with pkgs.vscode-extensions; [
        llvm-vs-code-extensions.vscode-clangd
      ];
    };
  };
}
