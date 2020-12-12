#!/usr/bin/env bash
echo "Made by Samyak Jain."
echo " Credits : Akhil Narang , Naman Parashar "
echo "********************************************************************************************************************************************************"
cd
sudo apt-get update 
sudo apt-get upgrade -y
echo "********************************************************************************************************************************************************"
cd
#sudo add-apt-repository ppa:openjdk-r/ppa 
cd
mkdir bin
cd bin
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo 
chmod a+x ~/bin/repo
echo "********************************************************************************************************************************************************"
cd
sudo apt-get install bison build-essential curl ccache flex lib32ncurses5-dev lib32z1-dev libesd0-dev libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev git-core make phablet-tools gperf openjdk-8-jdk -y
echo "********************************************************************************************************************************************************"
cd
cd bin
git clone https://github.com/akhilnarang/scripts.git build
cd
cd bin/build/setup
bash android_build_env.sh
echo "********************************************************************************************************************************************************"
cd
cd bin/build
mkdir lineage
cd lineage  
echo "********************************************************************************************************************************************************"
cd
cd bin/build/lineage
git config --global user.name "Samyak"
git config --global user.email "jainsamyak2002.sj@gmail.com"
echo "********************************************************************************************************************************************************"
cd 
cd bin/build/lineage
repo init -u git://github.com/LineageOS/android.git -b lineage-18.0
repo sync -c -q --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j$(nproc --all)
echo "********************************************************************************************************************************************************"
cd
cd bin/build/lineage
git clone https://github.com/PixelExtended/device_xiaomi_jasmine_sprout.git device/xiaomi/jasmine_sprout 
git clone https://github.com/PixelExtended/device_xiaomi_sdm660-common.git device/xiaomi/sdm660-common 
git clone https://github.com/xiaomi-sdm660/android_vendor_xiaomi_sdm660-common.git vendor/xiaomi/sdm660-common 
git clone https://github.com/xiaomi-sdm660/android_kernel_xiaomi_sdm660.git kernel/xiaomi/sdm660 
git clone https://github.com/xiaomi-sdm660/vendor_xiaomi_wayne-common.git vendor/xiaomi/wayne-common
echo "********************************************************************************************************************************************************"
echo " So i have included device trees from PEX, so now the script will make the necessary changes and will open files for your which you need to edit manually "
echo " You just need to change aosp to lineage, everyhwere you see it "
echo " Press any key to Proceed "
read proceed 
cd
cd bin/build/lineage/device/xiaomi/jasmine_sprout
mv aosp_jasmine_sprout.mk lineage_jasmine_sprout.mk
mv aosp.dependencies lineage.dependencies
nano lineage_jasmine_sprout.mk
nano lineage.dependencies
nano Android.bp
nano Android.mk
nano AndroidProducts.mk
nano BoardConfig.mk
cd ..
cd ..
cd ..
ccache -M 50G
echo "********************************************************************************************************************************************************"
#source build/envsetup.sh
#lunch lineage_jasmine_sprout-userdebug
#mka bacon -j6
echo " Everythng is done just go to your lineage folder which is under bin/build/lineage and just start to Build"
echo " Thankyou for using "
echo " You can check my github for more intresting scripts : https://github.com/Sammy970 "
