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

Enabling the plugin adds an "Icons" entry to the Omarchy menu automatically —
no manual setup needed. It does this once, by adding a `trigger.icons` row to
`~/.config/omarchy/extensions/omarchy-menu.jsonc` the first time it loads:

```jsonc
"trigger.icons": {
  "icon": "󰠱",
  "label": "Icons",
  "aliases": ["icons", "icon", "glyphs", "nerd font", "font icons", "symbols"],
  "description": "Search, copy, and type Nerd Font icons",
  "action": "omarchy-shell shell toggle jeffrey.icons"
}
```

It only does this if that key isn't already there, so hand edits (moving it,
changing the icon, adding a `when` guard) stick. Delete the block if you don't
want the menu entry — it won't come back unless you remove the plugin and add
it again.

Prefer a keybinding instead (`~/.config/hypr/bindings.lua`)?

```lua
o.bind(hyper .. "I", "Icons", "omarchy-shell shell toggle jeffrey.icons")
```

Once open, type to filter by keyword, use the arrow keys (or mouse) to move
through the grid, and press Enter or click a glyph to insert it into the
window that was focused before the overlay opened. Escape clears the filter
first, then closes the overlay.

## License

MIT
