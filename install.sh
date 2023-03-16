echo "drpy一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/drpy-on-replit"
rm -rf public/ && rm -rf templates/
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://github.com/sxbai/drpy-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/sxbai/drpy-on-replit/raw/master/replit.nix
cd ..
wget https://github.com/sxbai/drpy-on-replit/raw/master/main.py
wget https://github.com/sxbai/drpy-on-replit/raw/master/fix.sh
wget https://gitcode.net/qq_32394351/dr_py/-/archive/master/dr_py-master.zip
nix-env -iA nixpkgs.unzip
unzip dr_py-master.zip && mv dr_py-master/* .
cp -r build/.replit . && cp -r build/replit.nix .
pip install -r requirements.txt
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf dr_py-master/ && rm -rf build/
rm -rf dr_py-master.zip && rm -rf README.md
