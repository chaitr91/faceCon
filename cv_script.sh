pip install numpy
wget https://github.com/Itseez/opencv/archive/2.4.11.zip
unzip 2.4.11.zip && rm 2.4.11.zip
wget https://cmake.org/files/v3.5/cmake-3.5.0-rc1-Linux-x86_64.tar.gz
tar zxf cmake-3.5.0-rc1-Linux-x86_64.tar.gz && rm cmake-3.5.0-rc1-Linux-x86_64.tar.gz
mkdir .heroku/cmake
mv cmake-3.5.0-rc1-Linux-x86_64/bin .heroku/cmake
mv cmake-3.5.0-rc1-Linux-x86_64/share .heroku/cmake
cd opencv-2.4.11/
../.heroku/cmake/bin/cmake -DCMAKE_C_FLAGS=-fPIC -DCMAKE_INSTALL_PREFIX=/app/.heroku/opencv .
make
make install
cd ..
tar zcf opencv.env.tgz .heroku/opencv .heroku/cmake .heroku/python/lib/python2.7/site-packages/numpy .heroku/python/lib/python2.7/site-packages/cv*
aws s3 cp opencv.env.tgz s3://test5a9c0284/runtimes/opencv.env.tgz
