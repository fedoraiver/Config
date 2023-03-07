# set proxy config via profie.d - should apply for all users
# cp ThisFile /etc/profile.d/proxy.sh
# sudo chmod +x  /etc/profile.d/proxy.sh
# source /etc/profile.d/proxy.sh
# env | grep -i proxy
export http_proxy="http://ip:7890"
export https_proxy="http://ip:7890"
export ftp_proxy="http://ip:7890"
export no_proxy="http://ip:7890"
# For curl
export HTTP_PROXY="http://ip:7890"
export HTTPS_PROXY="http://ip:7890"
export FTP_PROXY="http://ip:7890"
export NO_PROXY="127.0.0.1,localhost"
