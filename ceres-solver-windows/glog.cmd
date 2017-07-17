cd ..
rmdir /S /Q glog_build_x64
mkdir glog_build_x64



cd glog_build_x64
cmake.exe ../glog -G "Visual Studio 14 2015 Win64" ^
-Dgflags_DIR:PATH="../gflags_build_x64" ^
-DWITH_THREADS:BOOL=FALSE ^
-DCMAKE_INSTALL_PREFIX:PATH="C:/SDKs/google/glog"

cmake.exe --build "." --target "ALL_BUILD" --config "Release"
cmake.exe --build "." --target "RUN_TESTS" --config "Release"
cmake.exe --build "." --target "INSTALL" --config "Release"
cd ..



cd /d "%~dp0"