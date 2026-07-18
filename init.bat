@echo off

pushd %~dp0

pip install -r requirements.txt

@REM public フォルダだけローカルにとってくるようにするための設定
pushd submodules/memo
git config core.sparsecheckout true
echo public > ../../.git/modules/submodules/memo/info/sparse-checkout
popd
git -C submodules/memo read-tree -mu HEAD

git submodule update --init --recursive

popd