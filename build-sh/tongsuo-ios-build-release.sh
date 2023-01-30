#zsh
mkdir ios-release
cd ios-release

export CC=clang;
export CROSS_TOP=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer
export CROSS_SDK=iPhoneOS.sdk
export PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:$PATH"

../tongsuo/Configure ios64-cross enable-ntls --prefix=/usr/local/openssl-ios64

#../tongsuo/config enable-ntls -Wl,-rpath . 
make build_libs 
make install_runtime_libs DESTDIR=../../tongsuo-bin/ios/release
