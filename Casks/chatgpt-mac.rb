cask 'chatgpt-mac' do
  arch arm: "arm64", intel: "x64"
  version '0.0.5'
  sha256 arm: 'e41a76560d78afd5000129aeb4d720c755bf916c7db32c81f608c5ee5bd3177a',
         intel: 'f2c1bbe1e37836e9615e0061fd41d16c2ab16e60440aee3af4f62f8d346ec330'

  url "https://github.com/vincelwt/chatgpt-mac/releases/download/v#{version}/ChatGPT-#{version}-#{arch}.dmg"
  name 'ChatGPT for Mac'
  desc 'ChatGPT for Mac, living in your menubar.'
  homepage 'https://github.com/vincelwt/chatgpt-mac'
  auto_updates true

  app 'ChatGPT.app'

  zap trash: [
    "~/Library/Application Support/chatgpt-mac",
    "~/Library/Caches/com.vincelwt.chatgptmac",
    "~/Library/Caches/com.vincelwt.chatgptmac.ShipIt",
    "~/Library/Preferences/com.vincelwt.chatgptmac.plist"
  ]
end
