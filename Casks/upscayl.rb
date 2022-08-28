cask 'upscayl' do
  version '1.2.0'
  sha256 'b60899c0b57c982077aaac9e0d537d6af9a2572e30a95861be78cb39e39635b2'

  url "https://github.com/upscayl/upscayl/releases/download/v#{version}/Upscayl-#{version}.dmg"
  name 'Upscayl'
  desc 'Free and Open Source AI Image Upscaler for Linux, MacOS and Windows built with Linux-First philosophy.'
  homepage 'https://github.com/upscayl/upscayl'

  app 'Upscayl.app'

  postflight do
    set_permissions "#{appdir}/Upscayl.app/Contents/Resources/bin/upscayl", 'u+x'
  end

  zap trash: [
    '~/Library/Application Support/Upscayl',
    '~/Library/Preferences/org.upscayl.app.plist',
    '~/Library/Saved Application State/org.upscayl.app.savedState'
  ]
end
