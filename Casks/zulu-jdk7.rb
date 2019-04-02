cask 'zulu-jdk7' do
    version '7.0.211,7.27.0.1-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
    name 'Azul Zulu Java Standard Edition Development Kit'
    homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
              rmdir:   '/Library/Java/JavaVirtualMachines'
  end