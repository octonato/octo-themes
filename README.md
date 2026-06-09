# octo-themes

A small family of editor themes inspired by the [Codigrate JetBrains themes](https://github.com/codigrate/jetbrains-themes).

| Variant | Appearance | Vibe |
|---|---|---|
| **Octo Autumn** | Light | warm cream, terracotta, olive, peach |
| **Octo Aurora Borealis** | Dark | deep teal, mauve-pink, sky blue, lime |
| **Octo Roraima** | Dark | near-black, rust, mustard, warm yellow |
| **Octo Everest** | Light | soft slate-blue, teal, peach, forest green |

Each variant ships for **Zed** (`zed/`) and **iTerm2** (`iterm/`). **Octo Autumn** also ships as a **Typora** theme (`typora/`). Two **Obsidian** themes are provided: **Octo Autumn** (`obsidian-autumn/`) and **Octo Everest** (`obsidian-everest/`) — each renders its light palette in light mode and **Octo Aurora Borealis** in dark mode.

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

## Install in Typora

**Quick install (macOS):**

```bash
./typora/install.sh
```

The script copies `octo-autumn.css` into `~/Library/Application Support/abnerworks.Typora/themes` (creating the folder if needed). Then open Typora and pick **Octo Autumn** from the **Themes** menu (restart Typora if it doesn't appear immediately).

**Manual install (all platforms):**

1. Open **Typora → Preferences… → Appearance**.
2. Click **Open Theme Folder** to reveal Typora's themes directory.
   - macOS: `~/Library/Application Support/abnerworks.Typora/themes`
   - Windows: `%APPDATA%\Typora\themes`
   - Linux: `~/.config/Typora/themes`
3. Copy `typora/octo-autumn.css` into that folder.
4. Restart Typora.
5. Pick **Octo Autumn** from the **Themes** menu.

Only **Octo Autumn** is available for Typora today. To tweak it, edit `typora/octo-autumn.css` and re-run the install script (or re-copy) — Typora picks up changes on restart.

## Install in Obsidian

Obsidian themes are installed per-vault, into `<vault>/.obsidian/themes/<Theme Name>/`. Two themes are available — install whichever you like (or both, then switch in Appearance):

| Theme | Folder | Light mode | Dark mode |
|---|---|---|---|
| **Octo Autumn** | `obsidian/` | Octo Autumn — warm cream, terracotta, olive | Octo Aurora Borealis |
| **Octo Everest** | `obsidian-everest/` | Octo Everest — soft slate-blue, teal, peach, forest green | Octo Aurora Borealis |

**Quick install (macOS/Linux):**

```bash
./obsidian/install.sh /path/to/your/vault          # Octo Autumn
./obsidian-everest/install.sh /path/to/your/vault  # Octo Everest
```

Each script copies that theme's `theme.css` and `manifest.json` into `<vault>/.obsidian/themes/<Theme Name>/` (creating the folder if needed).

**Manual install (all platforms):**

1. In your vault's `.obsidian/themes/` folder, create a subfolder named after the theme (`Octo Autumn` or `Octo Everest`).
2. Copy that theme folder's `theme.css` and `manifest.json` into it.
3. In Obsidian, open **Settings → Appearance → Themes** and pick the theme.

Both themes follow Obsidian's light/dark toggle (**Settings → Appearance → Base color scheme**): **light** mode renders the theme's own palette, **dark** mode renders **Octo Aurora Borealis** (deep teal, sky blue, mauve-pink, lime). The content column spans 90% of the view width. To tweak one, edit its `theme.css` and re-copy (or re-run the install script) — toggle the theme off and on in Appearance to reload.

### Terminal plugin (obsidian-terminal)

If you use the [obsidian-terminal](https://github.com/polyipseity/obsidian-terminal) plugin, the theme already styles the terminal **surface** — background, foreground, and cursor follow the theme's light palette (Everest or Autumn) in light mode and Aurora Borealis in dark mode automatically, so the terminal is no longer plain white.

The 16 **ANSI colours** (the bright reds/greens/blues of command output) are drawn on a canvas and can't be set from a theme stylesheet — set them once in the plugin instead.

> **Important:** the Terminal-options screen has no "theme" field — only font controls. The palette goes into the **raw JSON (data) editor** on that screen, nested under a `"theme"` key. Pasting the bare palette (or putting the colours at the top level) is silently discarded by the plugin's validator — this is the usual reason it "won't save".

1. **Settings → Terminal → Profiles**, edit your profile, open **Terminal options**.
2. In the **data / JSON editor**, replace the contents with the object below for your mode (it wraps the palette under `theme`), then **Save**.

**Light — Octo Autumn:**

```json
{
  "theme": {
    "foreground": "#2e1b0f", "background": "#f8f4f1", "cursor": "#6b9a24",
    "cursorAccent": "#f8f4f1", "selectionBackground": "#f4d3bd",
    "black": "#2e1b0f", "red": "#ce5e5e", "green": "#668a2b", "yellow": "#cc9d57",
    "blue": "#397fb7", "magenta": "#9f5161", "cyan": "#286d73", "white": "#82614c",
    "brightBlack": "#a58841", "brightRed": "#cb4848", "brightGreen": "#6b9a24",
    "brightYellow": "#dea51d", "brightBlue": "#3895ab", "brightMagenta": "#9b6081",
    "brightCyan": "#3895ab", "brightWhite": "#2e1b0f"
  }
}
```

**Light — Octo Everest:**

```json
{
  "theme": {
    "foreground": "#131b25", "background": "#e4ecef", "cursor": "#ed7e5a",
    "cursorAccent": "#e4ecef", "selectionBackground": "#f6d4c8",
    "black": "#0e3448", "red": "#ce5e5e", "green": "#30a25e", "yellow": "#cc9d57",
    "blue": "#397fb7", "magenta": "#83529b", "cyan": "#286da6", "white": "#8c949b",
    "brightBlack": "#567b8a", "brightRed": "#cb4848", "brightGreen": "#2e674f",
    "brightYellow": "#d09136", "brightBlue": "#246a89", "brightMagenta": "#8c4069",
    "brightCyan": "#1a6687", "brightWhite": "#0e3448"
  }
}
```

**Dark — Octo Aurora Borealis:**

```json
{
  "theme": {
    "foreground": "#e0e2e3", "background": "#142b37", "cursor": "#3cd0ff",
    "cursorAccent": "#142b37", "selectionBackground": "#1e3f53",
    "black": "#142b37", "red": "#ce5e5e", "green": "#46d27e", "yellow": "#cc9d57",
    "blue": "#4693d2", "magenta": "#bb719b", "cyan": "#049682", "white": "#b0b9be",
    "brightBlack": "#3f6579", "brightRed": "#cb4848", "brightGreen": "#73d379",
    "brightYellow": "#d09136", "brightBlue": "#7ac6f5", "brightMagenta": "#d193bb",
    "brightCyan": "#08b9a1", "brightWhite": "#e0e2e3"
  }
}
```

The plugin's *Follow theme* feature overrides `background`/`foreground`/`cursor` from the theme CSS, so those three keys in the JSON are just a fallback — the ANSI keys are the ones that matter. The palette doesn't switch with light/dark on its own, so paste the one matching the base color scheme you use most.

## Credits

octo-themes is derived work. The color palettes come from [Codigrate's JetBrains themes](https://github.com/codigrate/jetbrains-themes) — specifically the *Autumn*, *Aurora Borealis*, *Roraima*, and *Everest* themes — translated into Zed's theme schema and iTerm2's `.itermcolors` plist format. All credit for the visual design goes to Codigrate; this repo contributes only the porting and structural code.

## License

MIT — see [LICENSE](LICENSE). Copyright is shared: the original palettes are © Codigrate, the ports (Zed JSON and iTerm plists in this repo) are © Renato Cavalcanti.
