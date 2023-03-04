echo "drpy一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/drpy-on-replit"
rm -rf public/ && rm -rf templates/
rm -rf README.md && git clone https://github.com/sxbai/drpy-on-replit.git
cp -r drpy-on-replit/.replit . && mv drpy-on-replit/* .
wget https://gitcode.net/qq_32394351/dr_py/-/archive/master/dr_py-master.zip
unzip dr_py-master.zip && mv dr_py-master/* .
pip install -r requirements.txt
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf dr_py-master/ && rm -rf drpy-on-replit/
rm -rf dr_py-master.zip && rm -rf install.sh
