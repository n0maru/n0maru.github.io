@echo off

pushd %~dp0

pip install -r requirements.txt

git submodule update --init --recursive

popd