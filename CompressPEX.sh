cd
wget https://github.com/git-lfs/git-lfs/releases/download/v2.9.0/git-lfs-linux-amd64-v2.9.0.tar.gz
tar -xf git-lfs-linux-amd64-v2.9.0.tar.gz
./install.sh
cd
git clone https://github.com/Sammy970/sourcepex.git sam
cd 
cd bin/build/
tar cvzf source1.tar.gz pex
tar cvzf source2.tar.gz source1.tar.gz
tar cvzf source3.tar.gz source2.tar.gz
cd
mv bin/build/source3.tar.gz ~
mv source.tar.gz sam/
cd sam/
git lfs install
git lfs track ".tar.gz"
git lfs track "tar.gz"
