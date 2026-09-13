# Icons

An [Omarchy](https://omarchy.org) overlay for searching, copying, and typing
Nerd Font icons.

Nerd Font glyphs are everywhere in a terminal-heavy setup — status bars,
prompts, window titles — but typing one means either memorizing a codepoint
or digging through a cheat sheet in a browser. This overlay opens a searchable
grid instead: type a few keywords, arrow to the glyph you want, press Enter,
and it's inserted directly into whatever was focused.

## Install

```bash
omarchy plugin add https://github.com/CornillieJ/omarchy-icon-picker.git --enable
```

## Remove

```bash
omarchy plugin remove jeffrey.icons
```

## Use

This plugin is an overlay, so it doesn't add itself to the menu or a
keybinding on its own — wire up whichever entry point suits you.

Add a menu entry (`~/.config/omarchy/extensions/omarchy-menu.jsonc`):

```jsonc
"trigger.icons": {
  "icon": "󰠱",
  "label": "Icons",
  "aliases": ["icons", "icon", "glyphs", "nerd font", "font icons", "symbols"],
  "description": "Search, copy, and type Nerd Font icons",
  "action": "omarchy-shell shell toggle jeffrey.icons"
}
```

Or bind a key directly (`~/.config/hypr/bindings.lua`):

```lua
o.bind(hyper .. "I", "Icons", "omarchy-shell shell toggle jeffrey.icons")
```

Once open, type to filter by keyword, use the arrow keys (or mouse) to move
through the grid, and press Enter or click a glyph to insert it into the
window that was focused before the overlay opened. Escape clears the filter
first, then closes the overlay.

## License

MIT
