@echo off

pushd %~dp0

echo "リモートの変更を取得開始"
git pull --prune

echo "サブモジュール更新開始"
git submodule update --remote

git add ./submodules/memo

git commit -m "update docs at %date% %time%"

echo "更新完了"
echo "ドキュメントを確認してプッシュしてください"

mkdocs serve

popd