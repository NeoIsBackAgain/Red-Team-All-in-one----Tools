# Red-Team-All-in-one -- > Tools
That is the tools box for CPTS and OSCP , and futher more people needs to use 
#### NMAP 

- Reference : nmap https://nmap.org/

```shell
sudo apt install nmap # install 
nmap -p- -sV -T 4 -sC IP -Pn # usages
```

#### Installation for development using UV
-  Reference : https://www.netexec.wiki/getting-started/installation/installation-on-unix
```shell

# Install uv (and rust)

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
apt install pipx git
pipx ensurepath
pipx install uv

# Now that UV is set, up and we can download the NetExec repository and install its dependencies:

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
nmap -p- -sV -T 4 -sC IP -Pn # usages
```













