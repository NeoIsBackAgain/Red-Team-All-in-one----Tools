# Red-Team-All-in-one -- > Tools
That is the tools box for CPTS and OSCP , and futher more people needs to use 
#### NMAP 

- Reference : nmap https://nmap.org/

```shell
sudo apt install nmap # install 
nmap -p- -sV -T 4 -sC IP -Pn # usages
```

#### update linux 
```shell
echo "deb http://http.kali.org/kali kali-rolling main non-free non-free-firmware contrib" | sudo tee /etc/apt/sources.list > /dev/null && sudo apt update -y && sudo apt full-upgrade -y && sudo apt --fix-broken install -y
```

#### Installation for development using UV
-  Reference : https://www.netexec.wiki/getting-started/installation/installation-on-unix
```shell

# Install uv (and rust)

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo apt install pipx git
pipx ensurepath
pipx install uv
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# Now that UV is set, up and we can download the NetExec repository and install its dependencies:
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
git clone https://github.com/Pennyw0rth/NetExec
cd NetExec
uv tool install .
uv run netexec
```

#### DNS 

- Reference : 
```shell
sudo apt install netexec
nmap -p- -sV -T 4 -sC IP -Pn # usages
```



#### TMUX

- Reference : https://hackmd.io/@lunzaizai/rJmSXfk-c#%E5%AE%89%E8%A3%9D-Tmux
```shell
vim ~/.tmux.conf


# prefix + r 直接讓 tmux 吃到設定不用重開
bind-key r source-file ~/.tmux.conf \; display-message "~/.tmux.conf reloaded"

set-option -g default-terminal "screen-256color"
set-option -g status-key "emacs"

set-option -g status-bg "#666666"
set-option -g status-fg "#aaaaaa"
set-option -g status-left-length 50

# 使用滑鼠
set-option -g mouse on
set-option -g history-limit 102400

# 在 status bar 的右側顯示：
#   1. 按下 prefix 的提示
#   2. 顯示時間
set -g status-right '#{prefix_highlight} | %Y-%m-%d %H:%M'

# index 從 0 變成 1
set -g base-index 1
# window 如果由新增、刪除時會自動重新計數
set -g renumber-windows on

# prefix - 在 window 左側開啟水平的分割視窗 / prefix - | 在 window 的下方開啟垂直的分割視窗
#  - 後面的 -v -c '${path_current_path}' 會讓分割的視窗自動定位在目前 path
bind-key - split-window -v -c '#{pane_current_path}'
bind-key | split-window -h -c '#{pane_current_path}'
# prefix c 直接新增新的 window
#  - 後面的 -c "${pane_current_path}" 讓新增的視窗自動定位目前的 path
bind c new-window -c "#{pane_current_path}"
# prefix b 讓當前分割的 pane 變成獨立的 window
bind-key b break-pane -d

# prefix j 開啟 choose-tree 
#  - 透過 j k + enter 選擇要跳到哪個 session
# 注意： 要啟動 tmux 的狀態下才可以使用，如果把 tmux 壓到背景（detach）（prefix d）是叫不出來的
bind-key j choose-tree -swZ

# Fine adjustment (1 or 2 cursor cells per bump)
# 調整分割視窗的大小 
# shift + 方向鍵
bind -n S-Left resize-pane -L 2
bind -n S-Right resize-pane -R 2
bind -n S-Down resize-pane -D 1
bind -n S-Up resize-pane -U 1

# control k 清理 terminal 畫面
# 不能用一般的 command k，因為 Tmux 也會被洗掉（外加同個 window 的 pane 都會被洗掉）
bind -n C-k send-keys -R \; send-keys C-l \; clear-history

```

sudo apt install seclists
sudo mkdir /opt/SecLists/
sudo ln -s /usr/share/seclists  /opt/SecLists/













