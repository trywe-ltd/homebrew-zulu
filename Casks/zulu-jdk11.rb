cask 'zulu-jdk11' do
    version '11.43.21,11.0.9'
    sha256 'bac5270ed1cd3c02fcf3b30cb4c0124b7a66966ac2d2cf50bdcb7909e43e884d'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 11'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
