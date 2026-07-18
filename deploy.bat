@echo off

pushd %~dp0

@REM リモートリポジトリの gh-pages ブランチにビルド内容をプッシュする
mkdocs gh-deploy

if %ERRORLEVEL% equ 0 (
    echo "デプロイに成功しました。"
    echo "反映状況は https://github.com/n0maru.github.io/ から確認できます。"
) else (
    echo "デプロイに失敗しました。"
)


popd