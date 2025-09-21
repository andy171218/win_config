# --------------------------
# 基础优化设置
# --------------------------
Set-PSReadLineOption -PredictionSource History  # 启用输入预测
Set-PSReadLineOption -BellStyle None            # 关闭提示音
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete  # 增强 Tab 补全

# --------------------------
# 别名/快捷命令
# --------------------------
# ====== Scoop 命令别名 ======
# 安装应用
function sin { scoop install $args }
# 卸载应用
function su { scoop uninstall $args }
# 更新所有应用
function sup { scoop update * }
# 搜索应用
function ss { scoop-search $args } 
# 查看应用信息
function sinfo { scoop info $args }
# 清理缓存
function scr { scoop cache rm * }
# 列出已安装应用
function sli { scoop list }
# 重置应用（修复损坏的安装）
function sre { scoop reset $args }
# 添加仓库
function sba { scoop bucket add $args }
# 列出仓库
function sbl { scoop bucket list }
# 删除仓库
function sbr { scoop bucket rm $args }
# 统计应用数量
function stotal { (scoop list | Measure-Object).Count }

# --------------------------
# 环境变量扩展
# --------------------------
$env:EDITOR = "nvim" # 默认编辑器

# --------------------------
# 安全防护
# --------------------------
$ConfirmPreference = "High"       # 高危操作需确认
Set-ExecutionPolicy RemoteSigned  # 仅允许签名的远程脚本

# --------------------------
# Oh My Posh
# --------------------------
# 启用 Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_lean.omp.json" | Invoke-Expression

# 设置终端字体（需手动在终端设置中选择）
# 推荐：CaskaydiaCove NF, MesloLGM NF
