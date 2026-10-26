# Keymaps

Reference for this repo's custom mappings, enabled LazyVim defaults, and plugin controls.
Checked against all 46 plugin commits in `lazy-lock.json` and Neovim 0.11.
Standard Vim editing commands are covered by `:help index`; runtime mappings present
in this setup are included below.

**Notation:** `Space` is both leader and local leader. Keys are sequential and case-sensitive;
`Space Ge` means Space, uppercase G, lowercase e. `<C-x>` = Ctrl-x,
`<A-x>` = Alt-x, `<S-Tab>` = Shift-Tab, `<Enter>` = Return.
**Modes:** N normal, V visual, S select, O operator-pending, I insert, C command line,
T terminal. Plugin/buffer mappings take priority over global mappings.
“Root” means detected project root; “cwd” means Neovim's working directory.

**Find a binding:** `Space sk` searches mappings; `Space ?` shows buffer mappings;
press Space and pause for which-key. Use `:verbose nmap <keys>` (or `imap`/`xmap`)
to inspect the active definition.

Jump to: [global mappings](#global-mappings) · [LSP](#language-servers) ·
[Git hunks](#git-buffers-gitsigns) · [text objects](#syntax-navigation-and-text-objects) ·
[completion](#completion-blinkcmp) · [Oil](#oil-file-explorer) · [Telescope](#telescope-pickers) ·
[Trouble](#trouble-lists) · [search/replace](#search-and-replace-grug-far) ·
[debugger panels](#debugger-panels-dap-ui) · [Snacks](#snacks-pickers-git-history-and-explorer).

**Overrides:** `Space e` opens Oil; `Space fg` is live grep, not Git file search;
`Space gb` opens fullscreen line history; `<C-Left>`/`<C-Right>` navigate jumps,
not window width. Trouble/TODO actions use `Space t…`; the default `Space xx`,
`xX`, `cs`, `cS`, `xL`, `xQ`, `xt`, and `xT` mappings are disabled.

## Global mappings

### Files and search

| Keys | Mode | Action |
| --- | --- | --- |
| `Space fB` | N | Buffers (all) |
| `Space fE` | N | Explorer Snacks (cwd) |
| `Space fF` | N | Find Files (cwd) |
| `Space fR` | N | Recent (cwd) |
| `Space fT` | N | Terminal (cwd) |
| `Space fb` | N | Buffers |
| `Space fc` | N | Find Config File |
| `Space fe` | N | Explorer Snacks (root dir) |
| `Space ff` | N | Find Files (Root Dir) |
| `Space fg` | N | Live grep (cwd) |
| `Space fh` | N | Help tags |
| `Space fn` | N | New File |
| `Space fr` | N | Recent |
| `Space fs` | N | Find symbols in current file |
| `Space ft` | N | Terminal (Root Dir) |
| `Space s"` | N | Registers |
| `Space s/` | N | Search History |
| `Space sC` | N | Commands |
| `Space sD` | N | Buffer Diagnostics |
| `Space sG` | N | Grep (cwd) |
| `Space sH` | N | Search Highlight Groups |
| `Space sM` | N | Man Pages |
| `Space sR` | N | Resume |
| `Space sS` | N | Goto Symbol (Workspace) |
| `Space sT` | N | Todo/Fix/Fixme |
| `Space sW` | N | Word (cwd) |
| `Space sW` | V | Selection (cwd) |
| `Space sa` | N | Auto Commands |
| `Space sb` | N | Buffer Lines |
| `Space sc` | N | Command History |
| `Space sd` | N | Diagnostics |
| `Space sg` | N | Grep (Root Dir) |
| `Space sh` | N | Help Pages |
| `Space sj` | N | Jumplist |
| `Space sk` | N | Key Maps |
| `Space sl` | N | Location List |
| `Space sm` | N | Jump to Mark |
| `Space sn` | N | Noice shortcut prefix |
| `Space sna` | N | Noice All |
| `Space snd` | N | Dismiss All |
| `Space snh` | N | Noice History |
| `Space snl` | N | Noice Last Message |
| `Space snt` | N | Noice Picker (Telescope/FzfLua) |
| `Space so` | N | Options |
| `Space sq` | N | Quickfix List |
| `Space sr` | N,V | Search and Replace |
| `Space ss` | N | Goto Symbol |
| `Space st` | N | Todo |
| `Space sw` | N | Word (Root Dir) |
| `Space sw` | V | Selection (Root Dir) |

### Buffers

| Keys | Mode | Action |
| --- | --- | --- |
| `Space bD` | N | Delete Buffer and Window |
| `Space bP` | N | Delete Non-Pinned Buffers |
| `Space bb` | N | Switch to Other Buffer |
| `Space bd` | N | Delete Buffer |
| `Space bi` | N | Delete Invisible Buffers |
| `Space bj` | N | Pick Buffer |
| `Space bl` | N | Delete Buffers to the Left |
| `Space bo` | N | Delete Other Buffers |
| `Space bp` | N | Toggle Pin |
| `Space br` | N | Delete Buffers to the Right |

### Code and diagnostics

| Keys | Mode | Action |
| --- | --- | --- |
| `Space cF` | N,V | Format Injected Langs |
| `Space cd` | N | Line Diagnostics |
| `Space cf` | N,V | Format |
| `Space cm` | N | Mason |
| `Space xl` | N | Location List |
| `Space xq` | N | Quickfix List |

### Git

| Keys | Mode | Action |
| --- | --- | --- |
| `Space gB` | N,V | Git Browse (open) |
| `Space gL` | N | Git Log (cwd) |
| `Space gS` | N | Git Stash |
| `Space gY` | N,V | Git Browse (copy) |
| `Space gb` | N | Git Blame Line (Fullscreen) |
| `Space gc`, `Space gl` | N | Commits |
| `Space gf` | N | Git Current File History |
| `Space gs` | N | Status |
| `Space gt` | N | Toggle Inline Blame |

### Trouble and TODOs

| Keys | Mode | Action |
| --- | --- | --- |
| `Space tL` | N | Location list |
| `Space tT` | N | TODO / FIX / FIXME |
| `Space tb` | N | Buffer diagnostics |
| `Space td` | N | Workspace diagnostics |
| `Space tl` | N | LSP references / definitions |
| `Space tq` | N | Quickfix list |
| `Space ts` | N | Symbols |
| `Space tt` | N | TODOs |

### Debugging

| Keys | Mode | Action |
| --- | --- | --- |
| `Space dB` | N | Breakpoint Condition |
| `Space dC` | N | Run to Cursor |
| `Space dO` | N | Step Over |
| `Space dP` | N | Pause |
| `Space da` | N | Run with Args |
| `Space db` | N | Toggle Breakpoint |
| `Space dc` | N | Run/Continue |
| `Space de` | N,V | Eval |
| `Space dg` | N | Go to Line (No Execute) |
| `Space di` | N | Step Into |
| `Space dj` | N | Select lower stack frame |
| `Space dk` | N | Select higher stack frame |
| `Space dl` | N | Run Last |
| `Space do` | N | Step Out |
| `Space dph` | N | Toggle Profiler Highlights |
| `Space dpp` | N | Toggle Profiler |
| `Space dps` | N | Profiler Scratch Buffer |
| `Space dr` | N | Toggle REPL |
| `Space ds` | N | Session |
| `Space dt` | N | Terminate |
| `Space du` | N | Dap UI |
| `Space dw` | N | Widgets |

### Godot

| Keys | Mode | Action |
| --- | --- | --- |
| `Space Gb` | N | Build Godot C# project |
| `Space Ge` | N | Open project in Godot editor |
| `Space Gl` | N | Godot: connect GDScript LSP |
| `Space Gr` | N | Run Godot project's main scene |
| `Space Gs` | N | Run current Godot scene |

### UI toggles and inspection

| Keys | Mode | Action |
| --- | --- | --- |
| `Space uA` | N | Toggle Tabline |
| `Space uC` | N | Colorscheme with Preview |
| `Space uD` | N | Toggle Dimming |
| `Space uF` | N | Toggle Auto Format (Buffer) |
| `Space uI` | N | Inspect Tree |
| `Space uL` | N | Toggle Relative Number |
| `Space uS` | N | Toggle Smooth Scroll |
| `Space uT` | N | Toggle Treesitter Highlight |
| `Space uZ` | N | Toggle Zoom Mode |
| `Space ua` | N | Toggle Animations |
| `Space ub` | N | Toggle Dark Background |
| `Space uc` | N | Toggle Conceal Level |
| `Space ud` | N | Toggle Diagnostics |
| `Space uf` | N | Toggle Auto Format (Global) |
| `Space ug` | N | Toggle Indent Guides |
| `Space uh` | N | Toggle Inlay Hints |
| `Space ui` | N | Inspect Pos |
| `Space ul` | N | Toggle Line Numbers |
| `Space un` | N | Dismiss All Notifications |
| `Space up` | N | Toggle Mini Pairs |
| `Space ur` | N | Redraw / Clear hlsearch / Diff Update |
| `Space us` | N | Toggle Spelling |
| `Space uw` | N | Toggle Wrap |
| `Space uz` | N | Toggle Zen Mode |

### Windows and tabs

| Keys | Mode | Action |
| --- | --- | --- |
| `Space -` | N | Split Window Below |
| `Space <Tab><Tab>` | N | New Tab |
| `Space <Tab>[` | N | Previous Tab |
| `Space <Tab>]` | N | Next Tab |
| `Space <Tab>d` | N | Close Tab |
| `Space <Tab>f` | N | First Tab |
| `Space <Tab>l` | N | Last Tab |
| `Space <Tab>o` | N | Close Other Tabs |
| `Space wd` | N | Delete Window |
| `Space wm` | N | Toggle Zoom Mode |
| `Space \|` | N | Split Window Right |

### Sessions and quitting

| Keys | Mode | Action |
| --- | --- | --- |
| `Space qS` | N | Select Session |
| `Space qd` | N | Don't Save Current Session |
| `Space ql` | N | Restore Last Session |
| `Space qq` | N | Quit All |
| `Space qs` | N | Restore Session |

### Other leader mappings

| Keys | Mode | Action |
| --- | --- | --- |
| `Space ,` | N | Switch Buffer |
| `Space .` | N | Toggle Scratch Buffer |
| `Space /` | N | Grep (Root Dir) |
| `Space :` | N | Command History |
| `Space ?` | N | Buffer Keymaps (which-key) |
| `Space E` | N | Explorer Snacks (cwd) |
| `Space K` | N | Keywordprg |
| `Space L` | N | LazyVim Changelog |
| `Space S` | N | Select Scratch Buffer |
| `Space Space` | N | Find Files (Root Dir) |
| `Space Y` | N | Copy line to system clipboard |
| `` Space ` `` | N | Switch to Other Buffer |
| `Space e` | N | Open file explorer |
| `Space h` | N | Clear search highlight |
| `Space l` | N | Lazy |
| `Space n` | N | Notification History |
| `Space p` | V | Paste without replacing clipboard |
| `Space y` | N,V | Copy to system clipboard |

### Normal-mode navigation and editing

| Keys | Mode | Action |
| --- | --- | --- |
| `#` | V | Search selection backward |
| `%` | N,V,O | Jump to matching pair (matchit) |
| `&` | N | Repeat substitution with previous flags |
| `*` | V | Search selection forward |
| `,` | N,V,O | Repeat character search in opposite direction (Flash) |
| `-` | N | Open parent directory |
| `;` | N,V,O | Repeat character search (Flash) |
| `<` | V | Indent left and keep selection |
| `<A-j>` | N,V | Move Down |
| `<A-k>` | N,V | Move Up |
| `<C-/>` | N | Terminal (Root Dir) |
| `<C-Down>` | N | Decrease Window Height |
| `<C-Left>` | N | Jump back |
| `<C-Right>` | N | Jump forward |
| `<C-Space>` | N,V,O | Treesitter Incremental Selection |
| `<C-Up>` | N | Increase Window Height |
| `<C-_>` | N | Terminal toggle (Ctrl-/ alias) |
| `<C-b>` | N | Scroll Backward |
| `<C-f>` | N | Scroll Forward |
| `<C-h>` | N | Go to Left Window |
| `<C-j>` | N | Go to Lower Window |
| `<C-k>` | N | Go to Upper Window |
| `<C-l>` | N | Go to Right Window |
| `<C-s>` | N,V | Save File |
| `<C-w><C-d>`, `<C-w>d` | N | Show diagnostics under the cursor |
| `<C-w><Space>` | N | Window Hydra Mode (which-key) |
| `<Down>`, `j` | N,V | Down |
| `<Esc>` | N | Escape and Clear hlsearch |
| `<Up>`, `k` | N,V | Up |
| `>` | V | Indent right and keep selection |
| `@` | V | Execute register for each selected line |
| `F` | N,V,O | Find character backward (Flash) |
| `H`, `[b` | N | Prev Buffer |
| `L`, `]b` | N | Next Buffer |
| `N` | N,V,O | Prev Search Result |
| `Q` | V | Repeat last register for each selected line |
| `R` | V,O | Treesitter Search |
| `S` | N,V,O | Flash Treesitter |
| `T` | N,V,O | Move after character backward (Flash) |
| `Y` | N | Yank to end of line |
| `[%` | N,V,O | Jump to previous unmatched pair (matchit) |
| `[<C-l>` | N | :lpfile |
| `[<C-q>` | N | :cpfile |
| `[<C-t>` | N |  :ptprevious |
| `[<Space>` | N | Add empty line above cursor |
| `[A` | N | :rewind |
| `[B` | N | Move buffer prev |
| `[D` | N | Jump to the first diagnostic in the current buffer |
| `[L` | N | :lrewind |
| `[Q` | N | :crewind |
| `[T` | N | :trewind |
| `[[` | N | Prev Reference |
| `[a` | N | :previous |
| `[d` | N | Prev Diagnostic |
| `[e` | N | Prev Error |
| `[i` | N,V,O | jump to top edge of scope |
| `[l` | N | :lprevious |
| `[q` | N | Previous Trouble/Quickfix Item |
| `[t` | N | Previous Todo Comment |
| `[w` | N | Prev Warning |
| `]%` | N,V,O | Jump to next unmatched pair (matchit) |
| `]<C-l>` | N | :lnfile |
| `]<C-q>` | N | :cnfile |
| `]<C-t>` | N | :ptnext |
| `]<Space>` | N | Add empty line below cursor |
| `]A` | N | :last |
| `]B` | N | Move buffer next |
| `]D` | N | Jump to the last diagnostic in the current buffer |
| `]L` | N | :llast |
| `]Q` | N | :clast |
| `]T` | N | :tlast |
| `]]` | N | Next Reference |
| `]a` | N | :next |
| `]d` | N | Next Diagnostic |
| `]e` | N | Next Error |
| `]i` | N,V,O | jump to bottom edge of scope |
| `]l` | N | :lnext |
| `]q` | N | Next Trouble/Quickfix Item |
| `]t` | N | Next Todo Comment |
| `]w` | N | Next Warning |
| `a` | V,O | Around textobject |
| `a%` | V | Select matching pair and contents (matchit) |
| `ai` | V,O | full scope |
| `al` | V,O | Around last textobject |
| `an` | V,O | Around next textobject |
| `f` | N,V,O | Find character forward (Flash) |
| `g%` | N,V,O | Jump to matching pair backward (matchit) |
| `gO` | N | Document symbols (Neovim LSP) |
| `g[` | N,V,O | Move to left "around" |
| `g]` | N,V,O | Move to right "around" |
| `gc` | N,V | Toggle comment |
| `gc` | O | Comment textobject |
| `gcO` | N | Add Comment Above |
| `gcc` | N | Toggle comment line |
| `gco` | N | Add Comment Below |
| `gra` | N,V | Code action (Neovim LSP) |
| `gri` | N | Implementation (Neovim LSP) |
| `grn` | N | Rename symbol (Neovim LSP) |
| `grr` | N | References (Neovim LSP) |
| `grt` | N | Type definition (Neovim LSP) |
| `gx` | N,V | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| `i` | V,O | Inside textobject |
| `ii` | V,O | inner scope |
| `il` | V,O | Inside last textobject |
| `in` | V,O | Inside next textobject |
| `n` | N,V,O | Next Search Result |
| `r` | O | Remote Flash |
| `s` | N,V,O | Flash |
| `t` | N,V,O | Move before character forward (Flash) |

### Insert, select, command-line, and terminal modes

Completion and terminal buffers add more controls in the sections below.

| Keys | Mode | Action |
| --- | --- | --- |
| `"`, `'`, `` ` `` | I,C | Auto-pair quotes |
| `(`, `[`, `{` | I,C | Insert matching closing bracket |
| `)`, `]`, `}` | I,C | Skip matching closing bracket |
| `,`, `.`, `;` | I | Insert punctuation and start a new undo block |
| `<A-j>` | S,I | Move Down |
| `<A-k>` | S,I | Move Up |
| `<BS>` | I,C | Delete matching pair together |
| `<C-/>` | T | Terminal (Root Dir) |
| `<C-_>` | T | Terminal toggle (Ctrl-/ alias) |
| `<C-b>` | S,I | Scroll Backward |
| `<C-f>` | S,I | Scroll Forward |
| `<C-s>` | S,I | Save File |
| `<C-s>` | C | Toggle Flash Search |
| `<C-u>` | I | Delete to start of insertion (undoable) |
| `<C-w>` | I | Delete previous word (undoable) |
| `<Enter>` | I | Insert newline between matching pairs |
| `<Esc>` | S,I | Escape and Clear hlsearch |
| `<S-Enter>` | C | Redirect Cmdline |
| `<S-Tab>` | S,I | vim.snippet.jump if active, otherwise <S-Tab> |
| `<Tab>` | S,I | vim.snippet.jump if active, otherwise <Tab> |

### Conditional mappings

These are registered when the relevant tool, filetype, or plugin is available.

| Keys | Mode | Action |
| --- | --- | --- |
| `Space gg`, `Space gG` | N | Lazygit at project root / cwd; requires `lazygit` |
| `Space ux` | N | Toggle vim-illuminate reference highlighting after plugin load |
| `Space r` | N,V | Run Lua buffer/selection (Lua buffers) |

## Language servers

Available with an attached server; some require server support for the action.
C# uses OmniSharp's enhanced `gd`. TypeScript/JavaScript overrides follow the shared table.

| Keys | Mode | Action |
| --- | --- | --- |
| `<A-n>`, `]]` | N | Next Reference |
| `<A-p>`, `[[` | N | Prev Reference |
| `<C-k>` | I | Signature Help |
| `K` | N | Hover |
| `Space cA` | N | Source Action |
| `Space cC` | N | Refresh & Display Codelens |
| `Space cR` | N | Rename File |
| `Space ca` | N,V | Code Action |
| `Space cc` | N,V | Run Codelens |
| `Space cl` | N | Lsp Info |
| `Space co` | N | Organize Imports |
| `Space cr` | N | Rename |
| `gD` | N | Goto Declaration |
| `gI` | N | Goto Implementation |
| `gK` | N | Signature Help |
| `gd` | N | Goto Definition |
| `gr` | N | References |
| `gy` | N | Goto T[y]pe Definition |

### TypeScript / JavaScript (vtsls)

| Keys | Mode | Action |
| --- | --- | --- |
| `Space cD` | N | Fix all diagnostics |
| `Space cM` | N | Add missing imports |
| `Space cV` | N | Select TS workspace version |
| `gD` | N | Goto Source Definition |
| `gR` | N | File References |

## Git buffers (gitsigns)

Active when gitsigns attaches. Hunk navigation follows diff changes in diff windows.

| Keys | Mode | Action |
| --- | --- | --- |
| `Space ghB` | N | Blame Buffer |
| `Space ghD` | N | Diff This ~ |
| `Space ghR` | N | Reset Buffer |
| `Space ghS` | N | Stage Buffer |
| `Space ghb` | N | Blame Line |
| `Space ghd` | N | Diff This |
| `Space ghp` | N | Preview Hunk Inline |
| `Space ghr` | N,V | Reset Hunk |
| `Space ghs` | N,V | Stage Hunk |
| `Space ghu` | N | Undo Stage Hunk |
| `[H` | N | First Hunk |
| `[h` | N | Prev Hunk |
| `]H` | N | Last Hunk |
| `]h` | N | Next Hunk |
| `ih` | V,O | GitSigns Select Hunk |

## Syntax navigation and text objects

Treesitter movements require a parser and text-object queries for the current language.
They override native argument-list motions such as `[a` in supported buffers.

| Keys | Mode | Action |
| --- | --- | --- |
| `[f` | N,V,O | Previous function start |
| `[F` | N,V,O | Previous function end |
| `]f` | N,V,O | Next function start |
| `]F` | N,V,O | Next function end |
| `[c` | N,V,O | Previous class start |
| `[C` | N,V,O | Previous class end |
| `]c` | N,V,O | Next class start |
| `]C` | N,V,O | Next class end |
| `[a` | N,V,O | Previous parameter start |
| `[A` | N,V,O | Previous parameter end |
| `]a` | N,V,O | Next parameter start |
| `]A` | N,V,O | Next parameter end |

Use text objects after an operator (`d`, `c`, `y`) or in Visual mode:
`daf` deletes a function; `vif` selects its body. `a` = around, `i` = inside.

| Keys | Mode | Action |
| --- | --- | --- |
| `a{object}`, `i{object}` | V,O | Around / inside object |
| `an{object}`, `in{object}` | V,O | Around / inside next object |
| `al{object}`, `il{object}` | V,O | Around / inside previous object |
| `g[`, `g]` | N,V,O | Move to left / right edge of around-object |
| `af`, `if`; `ac`, `ic`; `ao`, `io` | V,O | Function; class; block/conditional/loop |
| `aa`, `ia`; `at`, `it` | V,O | Argument; HTML/XML tag |
| `ad`, `id`; `ae`, `ie`; `ag`, `ig` | V,O | Digits; case-sensitive word part; entire buffer |
| `au`, `iu`; `aU`, `iU` | V,O | Function call; call excluding dots from function name |
| `ab`, `ib`; `aq`, `iq`; bracket/quote characters | V,O | Balanced brackets; quotes; specific bracket/quote |
| `a?`, `i?` | V,O | Interactively supply a text-object pattern |
| `ai`, `ii` | V,O | Full/inner indent scope (Snacks) |

For Flash incremental selection: `<C-Space>` expands and `<BS>` shrinks after starting it.

## Completion (blink.cmp)

Insert mode, when completion/snippets are available. Keys fall back to their normal
behavior when the corresponding completion action cannot run.

| Keys | Mode | Action |
| --- | --- | --- |
| `<C-Space>` | I | Show completion, then show/hide documentation |
| `<C-b>` | I | Scroll documentation up |
| `<C-e>` | I | Cancel completion |
| `<C-f>` | I | Scroll documentation down |
| `<C-k>` | I | Show/hide signature help |
| `<C-n>`, `<Down>` | I | Next completion |
| `<C-p>`, `<Up>` | I | Previous completion |
| `<C-y>` | I | Select and accept completion |
| `<Enter>` | I | Accept selected completion |
| `<S-Tab>` | I | Previous snippet placeholder |
| `<Tab>` | I | Select and accept completion; otherwise advance snippet, then normal Tab |

## Oil file explorer

Open with `-` or `Space e`. Edit directory entries, then `:w` to apply file operations.
These controls are local to Oil (N unless indicated by Oil's help).

| Keys | Action |
| --- | --- |
| `<Enter>` | Open entry |
| `<C-s>` | Open in vertical split |
| `<C-h>` | Open in horizontal split |
| `<C-t>` | Open in new tab |
| `<C-p>` | Preview entry |
| `<C-c>` | Close Oil |
| `<C-l>` | Refresh |
| `-` | Parent directory |
| `_` | Open cwd |
| `` ` `` | Set cwd to displayed directory |
| `g~` | Set tab-local cwd |
| `gs` | Change sorting |
| `gx` | Open using system application |
| `g.` | Toggle hidden files |
| `g\` | Toggle trash view |
| `g?` | Show all Oil bindings |

## Telescope pickers

I = typing in the prompt; N = prompt Normal mode (`Esc` leaves Insert mode).
In this config `<C-t>` opens Trouble in I, and a new tab in N.

| Keys | Mode | Action |
| --- | --- | --- |
| `<Enter>` | N,I | Open selection |
| `<C-x>` | N,I | Open horizontal split |
| `<C-v>` | N,I | Open vertical split |
| `<C-t>` | N | Open in tab |
| `<C-t>, <A-t>` | I | Open results in Trouble |
| `<C-n>, <Down>` | I | Next result |
| `<C-p>, <Up>` | I | Previous result |
| `j, <Down>` | N | Next result |
| `k, <Up>` | N | Previous result |
| `H, gg` | N | First result |
| `M` | N | Middle result |
| `L, G` | N | Last result |
| `<Tab>, <S-Tab>` | N,I | Toggle selection; move down/up |
| `<C-q>` | N,I | Send all results to quickfix and open it |
| `<A-q>` | N,I | Send selected results to quickfix |
| `<C-u>, <C-d>` | N,I | Scroll preview up/down |
| `<C-f>, <C-b>` | I | Scroll preview down/up |
| `<C-f>, <C-k>` | N | Scroll preview left/right |
| `<C-k>` | I | Scroll preview right |
| `<PageUp>, <PageDown>` | N,I | Scroll results up/down |
| `<A-f>, <A-k>` | N,I | Scroll results left/right |
| `<C-Up>, <C-Down>` | I | Previous/next prompt history |
| `<A-i>` | I | Include ignored files |
| `<A-h>` | I | Include hidden files |
| `<A-c>` | I | Switch root picker to cwd, when available |
| `s` | N | Flash-jump to result |
| `<C-s>` | I | Flash-jump to result |
| `<C-l>` | I | Complete tag |
| `<C-r><C-w>, <C-r><C-a>` | I | Insert original word / WORD |
| `<C-r><C-f>, <C-r><C-l>` | I | Insert original file name / line |
| `<C-w>` | I | Delete previous prompt word |
| `<C-j>` | I | Disabled (prevents newline) |
| `<C-/> (or <C-_>)` | I | Show picker bindings |
| `?` | N | Show picker bindings |
| `<C-c>` | I | Close picker |
| `q, <Esc>` | N | Close picker |
| `<LeftMouse>, <2-LeftMouse>` | N,I | Select result / open result |

## Trouble lists

Local to Trouble; N except Visual `d`. Fold keys affect the results tree.

| Keys | Mode | Action |
| --- | --- | --- |
| `<2-leftmouse>`, `<Enter>` | N | Jump |
| `<C-s>` | N | Jump split |
| `<C-v>` | N | Jump vsplit |
| `<Esc>` | N | Cancel |
| `?` | N | Help |
| `P` | N | Toggle preview |
| `R` | N | Toggle refresh |
| `[[`, `{` | N | Prev |
| `]]`, `}` | N | Next |
| `d` | V,S | Delete |
| `dd` | N | Delete |
| `gb` | N | Toggle Current Buffer Filter |
| `i` | N | Inspect |
| `o` | N | Jump close |
| `p` | N | Preview |
| `q` | N | Close |
| `r` | N | Refresh |
| `s` | N | Toggle Severity Filter |
| `zA` | N | Fold toggle recursive |
| `zC` | N | Fold close recursive |
| `zM` | N | Fold close all |
| `zN` | N | Fold enable |
| `zO` | N | Fold open recursive |
| `zR` | N | Fold open all |
| `zX` | N | Fold update all |
| `za` | N | Fold toggle |
| `zc` | N | Fold close |
| `zi` | N | Fold toggle enable |
| `zm` | N | Fold more |
| `zn` | N | Fold disable |
| `zo` | N | Fold open |
| `zr` | N | Fold reduce |
| `zx` | N | Fold update |

## Search and replace (grug-far)

Open with `Space sr`. These N-mode controls use Space as the local leader.

| Keys | Mode | Action |
| --- | --- | --- |
| `<Enter>` | N | Goto Location |
| `<Enter>` | N | Pick History Entry |
| `<S-Tab>` | N | Prev Input |
| `<Tab>` | N | Next Input |
| `<down>` | N | Open Next Location |
| `<up>` | N | Open Prev Location |
| `Space a` | N | History Add |
| `Space b` | N | Abort |
| `Space c` | N | Close |
| `Space e` | N | Swap Engine |
| `Space f` | N | Refresh |
| `Space i` | N | Preview Location |
| `Space j` | N | Apply Next |
| `Space k` | N | Apply Prev |
| `Space l` | N | Sync Line |
| `Space n` | N | Sync Next |
| `Space o` | N | Open Location |
| `Space p` | N | Sync Prev |
| `Space q` | N | Qflist |
| `Space r` | N | Replace |
| `Space s` | N | Sync Locations |
| `Space t` | N | History Open |
| `Space v` | N | Sync File |
| `Space w` | N | Toggle Show Command |
| `Space x` | N | Swap Replacement Interpreter |
| `g?` | N | Help |

## Debugger panels (dap-ui)

Open with `Space du`. Actions depend on the focused panel (scopes, watches, etc.).

| Keys | Mode | Action |
| --- | --- | --- |
| `<2-LeftMouse>`, `<Enter>` | N | Expand |
| `<Esc>`, `q` | N | Close floating debugger window |
| `d` | N | Remove |
| `e` | N | Edit |
| `o` | N | Open |
| `r` | N | Repl |
| `t` | N | Toggle |
| `w` | N | Watch |

## Snacks pickers (Git history and explorer)

Git-history shortcuts open Snacks rather than Telescope. I = search input,
N = input/list Normal mode. Input/list controls are shown together; preview controls
are listed separately. The explorer's overrides follow the shared controls.

| Keys | Pane / mode | Action |
| --- | --- | --- |
| `<C-c>` | input I | Cancel |
| `<Esc>`, `q` | input, list, preview N | Cancel |
| `<Enter>` | input N,I | Confirm |
| `<2-LeftMouse>`, `<Enter>` | list N | Confirm |
| `<A-w>` | input N,I | Cycle win |
| `<A-w>` | list, preview N | Cycle win |
| `<C-w>` | input I | Delete word |
| `<C-s>` | input N,I | Edit split |
| `<C-s>` | list N | Edit split |
| `<C-v>` | input N,I | Edit vsplit |
| `<C-v>` | list N | Edit vsplit |
| `i` | list, preview N | Focus input |
| `<C-Up>` | input N,I | History back |
| `<C-Down>` | input N,I | History forward |
| `<C-r>#` | input I | Insert alt |
| `<C-r><C-a>` | input I | Insert c WORD |
| `<C-r><C-w>` | input I | Insert cword |
| `<C-r><C-f>` | input I | Insert file |
| `<C-r><C-p>` | input I | Insert file full |
| `<C-r>%` | input I | Insert filename |
| `<C-r><C-l>` | input I | Insert line |
| `<A-d>` | input N,I | Inspect |
| `<A-d>` | list N | Inspect |
| `<C-w>J` | input, list N | Layout bottom |
| `<C-w>H` | input, list N | Layout left |
| `<C-w>L` | input, list N | Layout right |
| `<C-w>K` | input, list N | Layout top |
| `G` | input, list N | List bottom |
| `<C-j>`, `<C-n>`, `<Down>` | input N,I | List down |
| `j` | input, list N | List down |
| `<C-j>`, `<C-n>`, `<Down>` | list N | List down |
| `zb` | list N | List scroll bottom |
| `zz` | list N | List scroll center |
| `<C-d>` | input N,I | List scroll down |
| `<C-d>` | list N | List scroll down |
| `zt` | list N | List scroll top |
| `<C-u>` | input N,I | List scroll up |
| `<C-u>` | list N | List scroll up |
| `gg` | input, list N | List top |
| `<C-k>`, `<C-p>`, `<Up>` | input N,I | List up |
| `k` | input, list N | List up |
| `<C-k>`, `<C-p>`, `<Up>` | list N | List up |
| `<S-Enter>` | input N,I | Pick win then Jump |
| `<S-Enter>` | list N | Pick win then Jump |
| `<C-f>` | input N,I | Preview scroll down |
| `<C-f>` | list N | Preview scroll down |
| `<C-b>` | input N,I | Preview scroll up |
| `<C-b>` | list N | Preview scroll up |
| `<C-g>` | list N | Print path |
| `<C-q>` | input N,I | Qflist |
| `<C-q>` | list N | Qflist |
| `<C-a>` | input N,I | Select all |
| `<C-a>` | list N | Select all |
| `<Tab>` | input N,I | Select and next |
| `<Tab>` | list N,V | Select and next |
| `<S-Tab>` | input N,I | Select and prev |
| `<S-Tab>` | list N,V | Select and prev |
| `<C-t>` | input N,I | Tab |
| `<C-t>` | list N | Tab |
| `/` | input, list N | Toggle focus |
| `<A-f>` | input N,I | Toggle follow |
| `<A-f>` | list N | Toggle follow |
| `?` | input N | Toggle help input |
| `?` | list N | Toggle help list |
| `<A-h>` | input N,I | Toggle hidden |
| `<A-h>` | list N | Toggle hidden |
| `<A-i>` | input N,I | Toggle ignored |
| `<A-i>` | list N | Toggle ignored |
| `<C-g>` | input N,I | Toggle live |
| `<A-m>` | input N,I | Toggle maximize |
| `<A-m>` | list N | Toggle maximize |
| `<A-p>` | input N,I | Toggle preview |
| `<A-p>` | list N | Toggle preview |
| `<A-r>` | input N,I | Toggle regex |

### Snacks explorer overrides

| Keys | Pane / mode | Action |
| --- | --- | --- |
| `.` | list N | Explorer focus |
| `<BS>` | list N | Explorer up |
| `<C-c>` | list N | Tcd |
| `<C-t>` | list N | Terminal |
| `<Space>/` | list N | Picker grep |
| `H` | list N | Toggle hidden |
| `I` | list N | Toggle ignored |
| `P` | list N | Toggle preview |
| `Z` | list N | Explorer close all |
| `[d` | list N | Explorer diagnostic prev |
| `[e` | list N | Explorer error prev |
| `[g` | list N | Explorer git prev |
| `[w` | list N | Explorer warn prev |
| `]d` | list N | Explorer diagnostic next |
| `]e` | list N | Explorer error next |
| `]g` | list N | Explorer git next |
| `]w` | list N | Explorer warn next |
| `a` | list N | Explorer add |
| `c` | list N | Explorer copy |
| `d` | list N | Explorer del |
| `h` | list N | Explorer close |
| `l` | list N | Confirm |
| `m` | list N | Explorer move |
| `o` | list N | Explorer open |
| `p` | list N | Explorer paste |
| `r` | list N | Explorer rename |
| `u` | list N | Explorer update |
| `y` | list N,V | Explorer yank |

## Terminals and dashboard

In Snacks terminal **T** mode, `<C-/>` hides the terminal. `<C-h/j/k/l>` move
between split windows; floating terminals pass these keys through to the shell.
`<C-\><C-n>` is Neovim's built-in escape to terminal Normal mode.

| Keys | Mode | Action |
| --- | --- | --- |
| `f` | N | Find File |
| `n` | N | New File |
| `g` | N | Find Text |
| `r` | N | Recent Files |
| `c` | N | Config |
| `s` | N | Restore Session |
| `x` | N | Lazy Extras |
| `l` | N | Lazy |
| `q` | N | Quit |

The table above applies only to the dashboard.

## Plugin manager

Inside `:Lazy` (`Space l`); lowercase actions apply to the selected plugin.

| Keys | Action |
| --- | --- |
| `H`, `?`, `q` | Plugin list, help, close |
| `I` / `i`, `U` / `u` | Install / update all or selected plugin |
| `S`, `X` / `x` | Sync; clean unused / remove selected plugin |
| `C` / `c`, `L` / `gl` | Check updates; show update log |
| `R` / `r` | Restore all / selected plugin to lockfile |
| `P`, `D` | Profile / debug view |
| `<Enter>`, `K`, `d` | Details, hover, diff |
| `]]`, `[[` | Next / previous plugin |
| `<C-s>`, `<C-f>`, `<C-c>` | Profile sort, profile filter, abort tasks |

## Sources and updates

Custom mappings: [keymaps.lua](lua/config/keymaps.lua),
[editor.lua](lua/plugins/editor.lua), [trouble.lua](lua/plugins/trouble.lua),
[git-blame.lua](lua/plugins/git-blame.lua), [completion.lua](lua/plugins/completion.lua).
Inherited bindings come from the LazyVim/extras and plugin versions recorded in
[lazy-lock.json](lazy-lock.json). Tool interfaces such as Mason, the DAP REPL,
and input dialogs have their own help; use their `?`/help controls for context-specific actions.
After plugin updates or new private overrides, the live mapping search is authoritative.
