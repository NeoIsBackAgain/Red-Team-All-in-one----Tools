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

# off滑鼠支援
set -g mouse off

# 使用 Vi 風格快捷鍵（在狀態列與複製模式中）
set -g status-keys vi
set -g mode-keys vi

# 將前綴鍵從 Ctrl+b 改為 Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# 新視窗開啟時，保持在目前目錄
bind c new-window -c "#{pane_current_path}"

# （可選）將狀態列移到頂部
# set -g status-position top
```
| 功能 | 快捷鍵 | 說明 |
|------|----------|------|
| guidline  | `Ctrl + a → ?` | help  |
| 新增視窗 | `Ctrl + a → c` | 在相同目錄下建立新視窗 |
| 下一個視窗 | `Ctrl + a → n` | 切換至下一個視窗 |
| 上一個視窗 | `Ctrl + a → p` | 切換至上一個視窗 |
| 視窗列表 | `Ctrl + a → w` | 顯示所有視窗列表 |
| 垂直分割窗格 | `Ctrl + a → "` | 垂直分割（可加上 `-c "#{pane_current_path}"`） |
| 水平分割窗格 | `Ctrl + a → %` | 水平分割 |
| 切換窗格 | `Ctrl + a → 方向鍵` | 在不同窗格間移動 |
| 進入複製模式 | `Ctrl + a → [` | 可用 Vi 鍵操作滾動、複製 |
| COPY | `Ctrl + a → space` | 可用 Vi 鍵操作滾動、複製 |
| paste | `Ctrl + a → =` | 複製 |
| 離開 tmux（分離） | `Ctrl + a → d` | 斷開但保留 session |
| 重新連回 | `tmux attach` | 回到之前的 session |


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


#### pipx4adtools
- Reference : https://github.com/manesec/pipx4adtools
```shell
uv tool install git+https://github.com/manesec/pipx4adtools
uv tool install git+https://github.com/manesec/pipx4adtools@relay-sccm
uv tool install git+https://github.com/manesec/pipx4adtools@tgssub
```
#### precompiled-binaries
- Reference : [https://github.com/manesec/pipx4adtools](https://github.com/jakobfriedl/precompiled-binaries)
> i edit the file for more flexable and easy for OSCP AND CPTS 
| 路徑 | 檔名 | 版本 | purpose | 驗證狀態 |
| ----------------------------- | ------------------------- | ------- | ------------------------------------------ | --------------- |
| Credentials/ | mimikatz.exe | TBD | 憑證擷取（credential dumping） | [ ] 未驗證 |
| Enumeration/ | NoPowerShell.exe | TBD | 偵查 / 禁用 PowerShell 偵測繞過 | [ ] 未驗證 |
| Enumeration/ | SharpUp.exe | TBD | 偵查 / 提權弱點掃描 | [ ] 未驗證 |
| Enumeration/ | SharpView.exe | TBD | AD 偵察（查詢 AD 資訊） | [ ] 未驗證 |
| Enumeration/ | winPEAS.exe | TBD | 自動化偵測環境弱點（本機/AD） | [ ] 未驗證 |
| LateralMovement/ | ADModule.dll | TBD | AD 操作模組（輔助工具） | [ ] 未驗證 |
| LateralMovement/GPOAbuse/ | SharpGPO.exe | TBD | GPO 相關操作 / 濫用工具 | [ ] 未驗證 |
| LateralMovement/GPOAbuse/ | SharpGPOAbuse.exe | TBD | GPO 濫用（權限/設定） | [ ] 未驗證 |
| LateralMovement/ | Rubeus.exe | TBD | Kerberos 工具（票證操作與攻擊） | [ ] 未驗證 |
| LateralMovement/ | SharpRDP.exe | TBD | RDP 相關操作 / 橫向移動輔助 | [ ] 未驗證 |
| PrivilegeEscalation/ | GodPotato.exe | TBD | 本機提權（NT AUTHORITY\SYSTEM 利用） | [ ] 未驗證 |
| PrivilegeEscalation/ | JuicyPotato.exe | TBD | 本機提權（權限提升利用） | [ ] 未驗證 |
| PrivilegeEscalation/KrbRelay/ | CheckPort.exe | TBD | Kerberos relay 前置檢查（連線/埠） | [ ] 未驗證 |
| PrivilegeEscalation/KrbRelay/ | KrbRelay.exe | TBD | Kerberos relay 攻擊工具 | [ ] 未驗證 |
| PrivilegeEscalation/KrbRelay/ | SCMUACBypass.exe | TBD | SCM / UAC 繞過工具 | [ ] 未驗證 |
| PrivilegeEscalation/ | KrbRelayUp.exe | TBD | Kerberos relay 與提權整合工具 | [ ] 未驗證 |
| PrivilegeEscalation/ | NetworkServiceExploit.exe | TBD | 針對 NetworkService 提權利用 | [ ] 未驗證 |
| PrivilegeEscalation/ | noPac.exe | TBD | 跳過系統保護或權限繞過工具 | [ ] 未驗證 |
| PrivilegeEscalation/ | PrintSpoofer64.exe | TBD | Print Spooler 提權利用 | [ ] 未驗證 |
| PrivilegeEscalation/ | SharpEfsPotato.exe | TBD | EFS / 提權相關利用工具 | [ ] 未驗證 |
| Scripts/ | Inveigh.ps1 | TBD | 網路/協定偵察與中繼（NTLM/LLMNR/MDNS） | [ ] 未驗證 |
| Scripts/ | LAPSToolkit.ps1 | TBD | 與 LAPS（Local Admin Password Solution）互動/測試 | [ ] 未驗證 |
| Scripts/ | Powermad.ps1 | TBD | 自動化偵查 / 輔助腳本 | [ ] 未驗證 |
| Scripts/ | PowerUp.ps1 | TBD | 提權檢查腳本（本機弱點檢查） | [ ] 未驗證 |
| Scripts/ | PowerUpSQL.ps1 | TBD | SQL Server 相關提升檢查腳本 | [ ] 未驗證 |
| Scripts/ | PowerView.ps1 | TBD | AD 偵察 / 查詢 / 腳本化操作 | [ ] 未驗證 |









