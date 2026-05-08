# octo-themes

A small family of editor themes inspired by the [Codigrate JetBrains themes](https://github.com/codigrate/jetbrains-themes).

| Variant | Appearance | Vibe |
|---|---|---|
| **Octo Autumn** | Light | warm cream, terracotta, olive, peach |
| **Octo Aurora Borealis** | Dark | deep teal, mauve-pink, sky blue, lime |
| **Octo Roraima** | Dark | near-black, rust, mustard, warm yellow |
| **Octo Everest** | Light | soft slate-blue, teal, peach, forest green |

Each variant ships for both **Zed** (`zed/`) and **iTerm2** (`iterm/`).

## Install in Zed (dev extension)

1. Open Zed.
2. Open the command palette: `cmd-shift-p` (macOS) or `ctrl-shift-p` (Linux).
3. Run **`zed: install dev extension`**.
4. Select the **`zed/`** folder (the one containing `extension.toml`).
5. Open the theme picker (`cmd-k cmd-t` / `ctrl-k ctrl-t`) and pick one of the octo-themes variants.

Edits to `zed/themes/octo-themes.json` are picked up on save — reopen the theme picker to see changes.

To uninstall, open **`zed: extensions`**, find *Octo* under the installed extensions, and remove it.

## Install in iTerm2

1. Open **iTerm2 → Settings… → Profiles → Colors**.
2. Click **Color Presets…** (bottom-right) → **Import…**.
3. Select the `.itermcolors` file(s) you want from `iterm/`:
   - `iterm/Octo Autumn.itermcolors`
   - `iterm/Octo Aurora Borealis.itermcolors`
   - `iterm/Octo Roraima.itermcolors`
   - `iterm/Octo Everest.itermcolors`
4. Open **Color Presets…** again and pick the imported preset.

Imports are per-profile — switch profiles or repeat the steps for each profile you want themed.

## Credits

octo-themes is derived work. The color palettes come from [Codigrate's JetBrains themes](https://github.com/codigrate/jetbrains-themes) — specifically the *Autumn*, *Aurora Borealis*, *Roraima*, and *Everest* themes — translated into Zed's theme schema and iTerm2's `.itermcolors` plist format. All credit for the visual design goes to Codigrate; this repo contributes only the porting and structural code.

## License

MIT — see [LICENSE](LICENSE). Copyright is shared: the original palettes are © Codigrate, the ports (Zed JSON and iTerm plists in this repo) are © Renato Cavalcanti.
