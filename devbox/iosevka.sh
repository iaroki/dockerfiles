#!/usr/bin/env bash

VERSION="33.3.3"
STYLE_SET="SS05"  # Fira Code style

mkdir -pv fonts && cd fonts
curl -LO "https://github.com/be5invis/Iosevka/releases/download/v${VERSION}/PkgTTF-Iosevka${STYLE_SET}-${VERSION}.zip"
curl -LO "https://github.com/be5invis/Iosevka/releases/download/v${VERSION}/PkgTTF-IosevkaAile-${VERSION}.zip"
curl -LO "https://github.com/be5invis/Iosevka/releases/download/v${VERSION}/PkgTTF-IosevkaEtoile-${VERSION}.zip"
unzip "PkgTTF-Iosevka${STYLE_SET}-${VERSION}.zip"
unzip "PkgTTF-IosevkaAile-${VERSION}.zip"
unzip "PkgTTF-IosevkaEtoile-${VERSION}.zip"
cd -
mkdir -pv ~/.local/share/fonts
mv -v fonts/*.ttf ~/.local/share/fonts
rm -rf fonts
