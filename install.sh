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
wget -O main.py https://github.com/sxbai/drpy-on-replit/raw/master/main.py
wget https://github.com/sxbai/drpy-on-replit/raw/master/fix.sh
wget https://github.com/hjdhnx/dr_py/archive/refs/heads/main.zip
nix-env -iA nixpkgs.unzip
unzip main.zip && mv dr_py-main/* .
cp -r build/.replit . && cp -r build/replit.nix .
pip install -r requirements.txt
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf dr_py-main/ && rm -rf build/
rm -rf main.zip && rm -rf README.md
