#bash
target=release
platform=x86_64
if [ $1 ]  
then 
  platform=$1 
fi
if [ $2 ] 
then  
  target=$2 
fi

echo $platform $target

mkdir -p build/gmssl/$platform-linux/$target
cd build/gmssl/$platform-linux/$target

# export CC=clang;
# export CROSS_TOP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer
# export CROSS_SDK=iPhoneOS.sdk
# export PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"

../../../../src/config enable-ntls -Wl,-rpath=. -DGMSSL

make build_libs 
make install_dev DESTDIR=../../../bin/gmssl/$platform-linux/$target
