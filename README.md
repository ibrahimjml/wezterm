
### Windows Combo Wezterm + Cmder + Starship

![Wezterm screen split](https://i.postimg.cc/44bGY4hk/Screenshot-2026-09-22-155531.png)


### Requirements

- **[NerdFont](https://www.nerdfonts.com/)** ( beautify icons for terminal ). 
- **[Wezterm](https://wezterm.org/)** ( A powerful terminal written in Rust, multiplexer by default for splitting screen , replace tmux on windows ).
- **[Clink](https://chrisant996.github.io/clink/)** ( A powerfull commandline, with lua scripting support ).
- **[Starship](https://starship.rs/)** ( Customizable status shell , written in Rust ).
- **[fzf](https://junegunn.github.io/fzf/installation/)** ( A command-line fuzzy finder, written in Go ).

### 1. Installation with  choco

```
choco install wezterm starship fzf -y
```
### 2. Features


## 1. Primary Action (ALT / Function Keys)

|Shortcut|Action Description|Core Function Reference|
|---|---|---|
|`ALT + t`|Open New Tab|`SpawnTab`|
|`ALT + LeftArrow`|Switch to Left Tab|`ActivateTabRelative(-1)`|
|`ALT + RightArrow`|Switch to Right Tab|`ActivateTabRelative(1)`|
|`ALT + 1` to `9`|Directly Jump to Tabs 1 through 9|`ActivateTab(0)` to `ActivateTab(8)`|
|`ALT + b`|Toggle Tab Bar Visibility|`EmitEvent("toggle-tabbar")`|
|`ALT + c`|Copy to Clipboard|`CopyTo`|
|`ALT + v`|Paste from Clipboard|`PasteFrom`|
|`ALT + =`|Zoom Text In (Increase Font Size)|`IncreaseFontSize`|
|`ALT + -`|Zoom Text Out (Decrease Font Size)|`DecreaseFontSize`|
|`ALT + 0`|Reset Text Zoom|`ResetFontSize`|
|`ALT + q`|Quit Application Entirely|`QuitApplication`|
|`F10`|Hide WezTerm Window|`Hide`|
|`F11`|Toggle Full Screen Mode|`ToggleFullScreen`|

## 2. Panes & Split Management (ALT + SHIFT / Navigation Keys)

|Shortcut|Action Description|Core Function Reference|
|---|---|---|
|`ALT + Enter`|Split Pane Horizontally|`SplitHorizontal`|
|`ALT + SHIFT + Enter`|Split Pane Vertically|`SplitVertical`|
|`ALT + w`|Close Current Pane (No Confirm)|`CloseCurrentPane`|
|`ALT + UpArrow`|Move Focus to Upper Pane|`ActivatePaneDirection("Up")`|
|`ALT + DownArrow`|Move Focus to Lower Pane|`ActivatePaneDirection("Down")`|
|`ALT + SHIFT + LeftArrow`|Move Focus to Left Pane|`ActivatePaneDirection("Left")`|
|`ALT + SHIFT + RightArrow`|Move Focus to Right Pane|`ActivatePaneDirection("Right")`|
|`ALT + SHIFT + z`|Toggle Maximized Pane (Zoom)|`TogglePaneZoomState`|
|`ALT + SHIFT + =`|Swap Selection with Active Pane|`PaneSelect(SwapWithActive)`|

## 3. Jump to Projects

| Shortcut    | Action Description           |
| ----------- | ---------------------------- |
| `ALT + p`   | Interactive Project Selector |
| `/`         | Search Project               |
| `Up + Down` | Navigate between Projects    |

### 3. clone wezterm 

- Cmder
```
  git clone --depth=1 https://github.com/ibrahimjml/wezterm %USERPROFILE%\.config
```
