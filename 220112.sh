# build 자동화

rm -rf build
zip -r aitax_main.zip ./*
mkdir build
mv aitax_main.zip ./build
cd build
unzip aitax_main.zip
rm aitax_main.zip build.sh
cd ../
chmod 755 -R build