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
```



#### Seclists
- Reference : https://github.com/danielmiessler/SecLists
```shell
cd /opt
git clone https://github.com/danielmiessler/SecLists.git
```

#### uv cve uages 
- Reference : https://0xdf.gitlab.io/cheatsheets/uv#scripts
```shell
vim exploit.py
uv add --script ./exploit.py request{your need  package}
uv run  exploit.py

```












