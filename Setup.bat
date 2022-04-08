@echo off
rem Use "Developer Command Prompt for VS 2022"
mkdir build
cd build
path %path%;C:\Program Files\Git\usr\bin
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Visual Studio 17 2022" -A x64 -Thost=x64 ..\llvm
devenv LLVM.sln