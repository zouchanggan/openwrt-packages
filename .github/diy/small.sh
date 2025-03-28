#!/bin/bash
function mvdir() {
mv -n `find $1/* -maxdepth 0 -type d` ./
rm -rf $1
}
########################################luci-app-passwall#############################################
git clone https://github.com/sbwml/openwrt_helloworld.git ./openwrt-passwall
rm -rf ./openwrt-passwall/luci-app-passwall
rm -rf ./openwrt-passwall/luci-app-passwall2
rm -rf ./openwrt-passwall/luci-app-ssr-plus
cp -r openwrt-passwall/* ./ && rm -rf ./openwrt-passwall
#原作者 第1版luci-app-passwall
git clone https://github.com/xiaorouji/openwrt-passwall ./passwall && mv passwall/luci-app-passwall ./ && rm -rf passwall
#原作者 第2版luci-app-passwall2
git clone https://github.com/xiaorouji/openwrt-passwall2 ./passwall2 && mv passwall2/luci-app-passwall2 ./ && rm -rf passwall2
########################################luci-app-ssr-plus#############################################
#原作者
git clone https://github.com/fw876/helloworld && mv helloworld/luci-app-ssr-plus ./ && rm -rf helloworld
rm -rf helloworld
############################################################################################################################################################

########################################small#############################################
git clone https://github.com/kenzok8/small ./small 
mv small/luci-app-mosdns ./ 
mv small/mosdns ./ 
rm -rf small
############################################################################################################################################################

########################################luci-app-lucky#############################################
git clone https://github.com/gdy666/luci-app-lucky ./luci-app-lucky && rm -rf luci-app-lucky/previews
############################################################################################################################################################

########################################AdGuardHome&smartdns#############################################
git clone https://github.com/kenzok8/openwrt-packages.git ./openwrt-packages
mv openwrt-packages/adguardhome ./ && mv openwrt-packages/smartdns ./
mv openwrt-packages/luci-app-adguardhome ./ && mv openwrt-packages/luci-app-smartdns ./
rm -rf openwrt-packages
############################################################################################################################################################

########################################luci-app-oaf#############################################
git clone https://github.com/destan19/OpenAppFilter ./luci-app-oaf
############################################################################################################################################################

########################################luci-app-autotimeset#############################################
git clone https://github.com/sirpdboy/luci-app-autotimeset ./luci-app-autotimeset
############################################################################################################################################################

#################################################主题########################################################################################################
########################################luci-app-argon#############################################
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git ./luci-app-argon-config
########################################luci-theme-design#############################################
git clone https://github.com/gngpp/luci-theme-design.git ./luci-theme-design
git clone https://github.com/gngpp/luci-app-design-config.git ./luci-app-design-config
####################################################################################
########################################luci-theme-kucat#############################################
git clone -b js https://github.com/sirpdboy/luci-theme-kucat.git ./luci-theme-kucat
git clone https://github.com/sirpdboy/luci-app-kucat-config.git ./luci-app-kucat-config
####################################################################################


rm -rf ./*/.git & rm -f ./*/.gitattributes
rm -rf ./*/.svn & rm -rf ./*/.github & rm -rf ./*/.gitignore
rm -rf ./*/*/.svn & rm -rf ./*/*/.github & rm -rf ./*/*/.gitignore
exit 0
