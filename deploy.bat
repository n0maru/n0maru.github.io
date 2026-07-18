@echo off

pushd %~dp0

@REM リモートリポジトリの gh-pages ブランチにビルド内容をプッシュする
mkdocs gh-deploy

popd