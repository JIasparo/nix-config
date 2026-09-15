{ ... }:

{
  config = {
    programs.gram.settings = {
      # General
      # Workspace Restoration
      restore_on_startup = "last_workspace"; # Controls session restoration on startup ("last_session": Restore all workspaces that were open when quitting Gram, "last_workspace": Restore the workspace that was closed last, "empty_tab": Always start with an empty editor, "launchpad": Always start with the welcome launchpad).

      # Appearance
      # Decorations
      client_side_decoration_rounding = 0.0; # Defines window border radius for platforms that use client side decorations.
      client_side_decoration_shadow = 0.0; # Defines window shadow size for platforms that use client side decorations.

      # Editor
      # Minimap
      minimap = {
        show = "auto"; # When to show the minimap in the editor ("always": Always show the minimap, "auto": Show the minimap if the editor's scrollbars are visible, "never": Never show the minimap).
        thumb = "always"; # When to show the minimap thumb (the visible editor area) in the minimap ("hover": Show the minimap thumb when hovering over the minimap, "always": Always show the minimap thumb).
        thumb_border = "none"; # How the minimap thumb border should look ("full": Display a border on all sides of the thumb, "left_open": Display a border on all sides except the left side, "right_open": Display a border on all sides except the right side, "left_only": Display a border only on the left side, "none": Display the thumb without any border).
      };

      # Wrapping
      soft_wrap = "editor_width"; # Whether or not to automatically wrap lines of text to fit editor / preferred width ("none": To avoid wrapping generally, unless the line is too long, "editor_width": To wrap lines that overflow the editor width, "preferred_line_length": To wrap lines that overflow the `preferred_line_length` config value, "bounded": To wrap lines at the minimum of `editor_width` config value and the `preferred_line_length` config value).

      # Indent Guides
      indent_guides = {
        coloring = "fixed"; # Enable indent aware coloring ("fixed": Indent guides use a fixed color, "indent_aware": Indent guides use different colors based on the theme's `accents` colors, "disabled": Removes colored indent guides).

        background_coloring = "disabled"; # Enable indent aware background coloring ("indent_aware": Indent guides use different background colors based on the theme's `accents` colors, "disabled": Removes background colored indent guides).
      };

      # Formatting
      format_on_save = "off"; # Whether to format the document when saving ("on", "off").
      remove_trailing_whitespace_on_save = false; # Whether or not to remove any trailing whitespace from lines of a buffer before saving it (true, false).

      # Miscellaneous
      middle_click_paste = false; # Whether to enable middle-click paste on Linux (true, false).
      colorize_brackets = true; # Whether to use tree-sitter bracket queries to detect and colorize the brackets in the editor (false, true).

      # Window & Layout
      # Title Bar
      title_bar.show_menus = true; # Whether to show the menus in the title bar (true, false).

      # Version Control
      # Inline Git Blame
      git.inline_blame.enabled = false; # Whether or not to show git blame information inline, on the currently focused line (true, false).
    };
  };
}
