```shell
# 普通用户下，打开powershell
# 脚本执行策略更改，默认自动同意
Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Force

# 执行安装命令（默认安装在用户目录下，如需更改请执行“自定义安装目录”命令）
iwr -useb scoop.201704.xyz | iex

# 更换scoop的repo地址
scoop config SCOOP_REPO "https://gitee.com/scoop-installer/scoop"
# 安装git
scoop install git
# 添加 bucket，默认拉取 sync 分支
scoop bucket add spc https://gitee.com/wlzwme/scoop-proxy-cn.git
# 只需要一个main一个spc大概就可以了

# 拉取新库地址
scoop update

# 安装软件
scoop export > ~\Downloads\scoop\scoop_apps.txt
scoop import  ~\Downloads\scoop\scoop_apps.txt

```