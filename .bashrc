# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
# ==========================================
# 🟢 MATRIX TERMINAL ENGINE
# ==========================================

# 1. Força o Prompt (seu nome/pasta) para o verde vibrante
export PS1="\[\e[32m\][\u@\h \W]\$ \[\e[0m\]"

# 2. Configura o LS_COLORS para que TUDO no 'ls' saia em tons de verde
# di=diretório, ex=executável, ln=link simbólico
export LS_COLORS="di=01;32:ln=01;36:so=01;32:pi=01;32:ex=01;32:bd=01;32:cd=01;32:su=01;32:sg=01;32:tw=01;32:ow=01;32:fi=00;32"

# 3. Aliases para garantir que as cores sejam aplicadas
alias ls='ls --color=always'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# 4. Configuração especial para o GCC (C Language)
# Isso deixa os avisos e setas do compilador em verde
export GCC_COLORS='error=01;31:warning=01;32:note=01;32:caret=01;32:locus=01:quote=01'

# 5. Garante que o terminal entenda que você quer 256 cores
export TERM=xterm-256color
