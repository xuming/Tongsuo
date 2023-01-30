#zsh
mkdir -p build/x86_64-linux/release
cd build/x86_64-linux/release

# export CC=clang;
# export CROSS_TOP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer
# export CROSS_SDK=iPhoneOS.sdk
# export PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"

../../../src/config enable-ntls -Wl,-rpath=. 

make build_libs 
make install_dev DESTDIR=../../../bin/x86_64-linux/release
