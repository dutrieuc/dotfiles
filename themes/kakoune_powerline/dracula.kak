hook global ModuleLoaded powerline %{ require-module powerline_dracula }

provide-module powerline_dracula %§
set-option -add global powerline_themes "dracula"

define-command -hidden powerline-theme-dracula %{ evaluate-commands %sh{

    black='rgb:282a36'
    gray='rgb:44475a'
    white='rgb:f8f8f2'
    blue='rgb:6272a4'
    cyan='rgb:8be9fd'
    green='rgb:50fa7b'
    orange='rgb:ffb86c'
    pink='rgb:ff79c6'
    purple='rgb:bd93f9'
    red='rgb:ff5555'
    yellow='rgb:f1fa8c'

    printf "%s\n" "
        declare-option -hidden str powerline_color14 ${gray} # bg: session
        declare-option -hidden str powerline_color11 ${gray} # bg: filetype
        declare-option -hidden str powerline_color12 ${gray} # bg: client
        declare-option -hidden str powerline_color01 ${gray} # bg: position
        declare-option -hidden str powerline_color03 ${gray} # bg: bufname
        declare-option -hidden str powerline_color04 ${gray} # bg: git
        declare-option -hidden str powerline_color08 ${gray} # base background
        declare-option -hidden str powerline_color09 ${gray} # bg: line-column, lsp
        declare-option -hidden str powerline_color00 ${purple} # fg: bufname
        declare-option -hidden str powerline_color02 ${green} # fg: git
        declare-option -hidden str powerline_color05 ${blue} # fg: position
        declare-option -hidden str powerline_color06 ${white} # fg: line-column, lsp
        declare-option -hidden str powerline_color07 ${yellow} # fg: mode-info
        declare-option -hidden str powerline_color10 ${pink} # fg: filetype
        declare-option -hidden str powerline_color13 ${cyan} # fg: client
        declare-option -hidden str powerline_color15 ${cyan} # fg: session

        declare-option -hidden str powerline_color30 'rgb:7c6f64' # unused
        declare-option -hidden str powerline_color31 'rgb:fbf1c7' # unused

        declare-option -hidden str powerline_next_bg %opt{powerline_color08}
        declare-option -hidden str powerline_base_bg %opt{powerline_color08}
    "
}}

§
